<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">

    <TextView
        android:id="@+id/reg"
        android:layout_width="295dp"
        android:layout_height="34dp"
        android:layout_marginTop="28dp"
        android:text="REGISTRATION FORM"
        android:textSize="25sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.586"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <TextView
        android:id="@+id/name"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="96dp"
        android:text="Full name"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <EditText
        android:id="@+id/names"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="80dp"
        android:ems="10"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.415"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />
    <TextView
        android:id="@+id/add"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="150dp"
        android:text="Address"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <EditText
        android:id="@+id/address"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="130dp"
        android:ems="10"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.415"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <TextView
        android:id="@+id/pass"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="195dp"
        android:text="Password"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <EditText
        android:id="@+id/password"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="180dp"
        android:ems="10"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.415"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <TextView
        android:id="@+id/gender"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="244dp"
        android:text="Gender"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />
    <RadioGroup

        android:id="@+id/radioGroup"

        android:layout_width="205dp"

        android:layout_height="32dp"

        android:layout_marginTop="172dp"

        android:orientation="horizontal"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintHorizontal_bias="0.834"

        app:layout_constraintStart_toStartOf="parent"

        app:layout_constraintTop_toTopOf="parent">

    </RadioGroup>

    <TextView
        android:id="@+id/ages"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="285dp"
        android:text="Age"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <EditText
        android:id="@+id/age"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="270dp"
        android:ems="10"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.415"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <TextView
        android:id="@+id/DOB"
        android:layout_width="216dp"
        android:layout_height="31dp"
        android:layout_marginTop="432dp"
        android:text="Date of birth"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.179"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <DatePicker
        android:id="@+id/simpleDatePicker"
        android:layout_width="353dp"
        android:layout_height="146dp"
        android:layout_marginStart="5dp"
        android:layout_marginTop="10dp"
        android:layout_marginEnd="5dp"
        android:datePickerMode="spinner"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@+id/DOB" />

    <TextView
        android:id="@+id/hobbies"
        android:layout_width="83dp"
        android:layout_height="32dp"
        android:layout_marginTop="328dp"
        android:text="Hobbies"
        android:textSize="18sp"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.118"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <CheckBox
        android:id="@+id/hobby1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="328dp"
        android:text="Reading"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.278"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <CheckBox
        android:id="@+id/hobby2"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="352dp"
        android:text="Writing"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.283"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <CheckBox
        android:id="@+id/hobby3"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginStart="100dp"
        android:layout_marginTop="380dp"
        android:text="Drawing"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.292"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <Button
        android:id="@+id/submit"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_marginTop="632dp"
        android:onClick="submitForm"
        android:text="Submit"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.522"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <RadioButton

        android:id="@+id/other"

        android:layout_width="96dp"

        android:layout_height="33dp"

        android:layout_marginTop="236dp"

        android:onClick="radioButtonhandler"

        android:text="Other"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintHorizontal_bias="0.822"

        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <RadioButton

        android:id="@+id/female"

        android:layout_width="45dp"

        android:layout_height="33dp"

        android:layout_marginTop="236dp"

        android:onClick="radioButtonhandler"

        android:text="F"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintHorizontal_bias="0.562"

        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

    <RadioButton

        android:id="@+id/radioButton"

        android:layout_width="45dp"

        android:layout_height="33dp"

        android:layout_marginTop="236dp"

        android:onClick="radioButtonhandler"

        android:text="M"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintHorizontal_bias="0.418"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />

</androidx.constraintlayout.widget.ConstraintLayout>

package com.example.ps2

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.*
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : AppCompatActivity() {

    private lateinit var names: EditText
    private lateinit var address: EditText
    private lateinit var password: EditText
    private lateinit var age: EditText
    private lateinit var radioButton: RadioButton
    private lateinit var female: RadioButton
    private lateinit var other: RadioButton
    private lateinit var simpleDatePicker: DatePicker
    private lateinit var hobby1: CheckBox
    private lateinit var hobby2: CheckBox
    private lateinit var hobby3: CheckBox

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        names = findViewById(R.id.names)
        address = findViewById(R.id.address)
        password = findViewById(R.id.password)
        age = findViewById(R.id.age)
        radioButton = findViewById(R.id.radioButton)
        female = findViewById(R.id.female)
        other = findViewById(R.id.other)
        simpleDatePicker = findViewById(R.id.simpleDatePicker)
        hobby1 = findViewById(R.id.hobby1)
        hobby2 = findViewById(R.id.hobby2)
        hobby3 = findViewById(R.id.hobby3)

        val submitButton: Button = findViewById(R.id.submit)
        submitButton.setOnClickListener {
            printDetails()
        }
    }

    private fun printDetails() {
        val nameText = names.text.toString()
        val addressText = address.text.toString()
        val passwordText = password.text.toString()
        val ageText = age.text.toString()

        val genderText = when {
            radioButton.isChecked -> "Male"
            female.isChecked -> "Female"
            other.isChecked -> "Other"
            else -> ""
        }

        val day = simpleDatePicker.dayOfMonth
        val month = simpleDatePicker.month
        val year = simpleDatePicker.year
        val dobText = formatDate(day, month, year)

        val hobbyText = StringBuilder()
        if (hobby1.isChecked) {
            hobbyText.append("Reading, ")
        }
        if (hobby2.isChecked) {
            hobbyText.append("Writing, ")
        }
        if (hobby3.isChecked) {
            hobbyText.append("Drawing, ")
        }
        val hobbies = hobbyText.toString().trimEnd(',', ' ')

        val details = "Name: $nameText\n" +
                "Address: $addressText\n" +
                "Password: $passwordText\n" +
                "Age: $ageText\n" +
                "Gender: $genderText\n" +
                "Date of Birth: $dobText\n" +
                "Hobbies: $hobbies"

        Toast.makeText(this, details, Toast.LENGTH_LONG).show()
    }

    private fun formatDate(day: Int, month: Int, year: Int): String {
        val calendar = Calendar.getInstance()
        calendar.set(year, month, day)
        val dateFormat = SimpleDateFormat("dd/MM/yyyy", Locale.getDefault())
        return dateFormat.format(calendar.time)
    }
}

