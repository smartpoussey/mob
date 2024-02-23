import android.content.Intent
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.Spinner
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.example.myapplication.R

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val spinner = findViewById<Spinner>(R.id.spinner)
        val adapter = ArrayAdapter.createFromResource(
            this,
            R.array.type,
            android.R.layout.simple_spinner_item
        )


        adapter.setDropDownViewResource(android.R.layout.simple_spinner_item)
        spinner.adapter = adapter


        var unitconsumed= findViewById<TextView>(R.id.textView5)
        var presreading_input= findViewById<EditText>(R.id.editTextText)
        var prevreading = findViewById<TextView>(R.id.textView4)
        var calculatebtn = findViewById<Button>(R.id.button)
        val amount = findViewById<TextView>(R.id.textView10)
        calculatebtn.setOnClickListener{
            unitconsumed.text=""
            amount.text=""
            unitconsumed.text=(presreading_input.text.toString().toInt()-prevreading.text.toString().toInt()).toString()
            val text: String =spinner.selectedItem.toString()
            if (text == "Domestic Usage") {
                if (unitconsumed.text.toString().toInt() in 100..200){
                    amount.text=(unitconsumed.text.toString().toInt() * 15).toString()
                }else if(unitconsumed.text.toString().toInt() in 200..300){
                    amount.text=(unitconsumed.text.toString().toInt() * 20).toString()
                }else if(unitconsumed.text.toString().toInt() > 300){
                    amount.text=(unitconsumed.text.toString().toInt() * 25).toString()
                }else{
                    amount.text=(0).toString()
                }
            }else if(text == "Commercial Usage"){
                if (unitconsumed.text.toString().toInt() in 1..100){
                    amount.text=(unitconsumed.text.toString().toInt() * 10).toString()
                }else if(unitconsumed.text.toString().toInt() in 100..200){
                    amount.text=(unitconsumed.text.toString().toInt() * 15).toString()
                }else if(unitconsumed.text.toString().toInt() in 200..300){
                    amount.text=(unitconsumed.text.toString().toInt() * 20).toString()
                }else if(unitconsumed.text.toString().toInt() > 300){
                    amount.text=(unitconsumed.text.toString().toInt() * 25).toString()
                }
            }
        }

        val intentbtn=findViewById<Button>(R.id.button2)
        intentbtn.setOnClickListener {
            val intent = Intent(this, MainActivity2::class.java)
            intent.putExtra("amountText",amount.text)
            startActivity(intent)

        }
    }
}











<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
xmlns:app="http://schemas.android.com/apk/res-auto"
xmlns:tools="http://schemas.android.com/tools"
android:layout_width="match_parent"
android:layout_height="match_parent"
tools:context=".MainActivity">

<TextView
    android:id="@+id/textView1"
    android:layout_width="135dp"
    android:layout_height="34dp"
    android:layout_marginStart="36dp"
    android:layout_marginTop="204dp"
    android:text="Unit Consumed"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintEnd_toStartOf="@+id/textView5"
    app:layout_constraintHorizontal_bias="0.055"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    tools:ignore="DuplicateIds,MissingConstraints" />

<TextView
    android:id="@+id/textView2"
    android:layout_width="135dp"
    android:layout_height="24dp"
    android:layout_marginStart="20dp"
    android:layout_marginTop="152dp"
    android:text="Present Reading"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintEnd_toStartOf="@+id/editTextText"
    app:layout_constraintHorizontal_bias="0.346"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    tools:ignore="DuplicateIds,MissingConstraints" />

<TextView
    android:id="@+id/textView3"
    android:layout_width="135dp"
    android:layout_height="34dp"
    android:layout_marginTop="96dp"
    android:text="Previous Reading"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintBottom_toTopOf="@+id/textView2"
    app:layout_constraintEnd_toStartOf="@+id/textView4"
    app:layout_constraintHorizontal_bias="0.535"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    app:layout_constraintVertical_bias="0.0"
    tools:ignore="DuplicateIds,MissingConstraints" />

<TextView
    android:id="@+id/textView4"
    android:layout_width="206dp"
    android:layout_height="34dp"
    android:text="10000"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintBottom_toTopOf="@+id/editTextText"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.807"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/spinner"
    app:layout_constraintVertical_bias="0.562"
    tools:ignore="DuplicateIds,MissingConstraints" />

<TextView
    android:id="@+id/textView5"
    android:layout_width="206dp"
    android:layout_height="34dp"
    android:layout_marginTop="204dp"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.807"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    tools:ignore="DuplicateIds,MissingConstraints" />

<androidx.appcompat.widget.Toolbar
    android:id="@+id/toolbar"
    android:layout_width="456dp"
    android:layout_height="64dp"
    android:background="?attr/colorPrimary"
    android:minHeight="?attr/actionBarSize"
    android:theme="?attr/actionBarTheme"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintTop_toTopOf="parent"
    app:layout_constraintVertical_bias="0.002"
    tools:ignore="MissingConstraints"
    tools:layout_editor_absoluteX="1dp" />

<TextView
    android:id="@+id/textView"
    android:layout_width="295dp"
    android:layout_height="38dp"
    android:text="Water Bill Calculator"
    android:textColor="#FFFFFF"
    android:textSize="24sp"
    app:layout_constraintBottom_toBottomOf="@+id/toolbar"
    app:layout_constraintEnd_toEndOf="@+id/toolbar"
    app:layout_constraintHorizontal_bias="0.166"
    app:layout_constraintStart_toStartOf="@+id/toolbar"
    app:layout_constraintTop_toTopOf="@+id/toolbar"
    app:layout_constraintVertical_bias="0.615"
    tools:ignore="MissingConstraints" />

<TextView
    android:id="@+id/textView6"
    android:layout_width="135dp"
    android:layout_height="34dp"
    android:layout_marginTop="36dp"
    android:text="Connection Type"
    android:textAlignment="center"
    android:textSize="16sp"
    app:layout_constraintBottom_toTopOf="@+id/textView2"
    app:layout_constraintEnd_toStartOf="@+id/spinner"
    app:layout_constraintHorizontal_bias="0.529"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    app:layout_constraintVertical_bias="0.054"
    tools:ignore="MissingConstraints,NotSibling" />

<Spinner
    android:id="@+id/spinner"
    android:layout_width="207dp"
    android:layout_height="38dp"
    android:layout_marginTop="40dp"
    android:layout_marginEnd="48dp"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    tools:ignore="MissingConstraints" />

<EditText
    android:id="@+id/editTextText"
    android:layout_width="208dp"
    android:layout_height="45dp"
    android:layout_marginTop="136dp"
    android:ems="10"
    android:inputType="text"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.818"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    app:layout_constraintVertical_bias="0.015" />

<Button
    android:id="@+id/button"
    android:layout_width="157dp"
    android:layout_height="53dp"
    android:layout_marginTop="256dp"
    android:text="Calculate"
    android:textSize="20sp"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar" />

<TextView
    android:id="@+id/textView7"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="BILL AMOUNT"
    android:textAlignment="center"
    android:textFontWeight="5"
    android:textSize="24sp"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.498"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/button"
    app:layout_constraintVertical_bias="0.062" />

<TextView
    android:id="@+id/textView8"
    android:layout_width="149dp"
    android:layout_height="35dp"
    android:textAlignment="center"
    android:textSize="20sp"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.496"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/textView5"
    app:layout_constraintVertical_bias="0.059" />

<TextView
    android:id="@+id/textView10"
    android:layout_width="74dp"
    android:layout_height="38dp"
    android:textColor="#000000"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/toolbar"
    app:layout_constraintVertical_bias="0.563"
    tools:ignore="MissingConstraints" />

<Button
    android:id="@+id/button2"
    android:layout_width="162dp"
    android:layout_height="45dp"
    android:layout_marginBottom="224dp"
    android:text="Intent"
    app:layout_constraintBottom_toBottomOf="parent"
    app:layout_constraintEnd_toEndOf="parent"
    app:layout_constraintHorizontal_bias="0.508"
    app:layout_constraintStart_toStartOf="parent"
    app:layout_constraintTop_toBottomOf="@+id/textView10"
    app:layout_constraintVertical_bias="1.0" />


</androidx.constraintlayout.widget.ConstraintLayout>
