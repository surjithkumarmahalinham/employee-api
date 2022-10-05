<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'emp_id',
        'emp_name',
        'emp_gender',
        'emp_email',
        'emp_phone',
        'emp_date_of_join',
        'emp_salary',
        'created_at',
        'updated_at',
    ];
}
