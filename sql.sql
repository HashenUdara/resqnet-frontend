users(
  user_id INT PK,
  username VARCHAR(100),
`password_hash` varchar(255) NOT NULL,
  email VARCHAR(150),
  role ENUM('general','volunteer','ngo','grama_niladhari','dmc')
);

volunteers(
  user_id INT PK FK → users(user_id),
  name VARCHAR(150),
  age INT,
  gender ENUM('male','female','other'),
  contact_number VARCHAR(20),
  hourse_no VARCHAR(50),
  street VARCHAR(100),
  city VARCHAR(100),
  district VARCHAR(100),
  gn_division VARCHAR(100)
);
 general_user(
  user_id INT PK FK → users(user_id),
  name VARCHAR(150),
  contact_number VARCHAR(20),
  hourse_no VARCHAR(50),
  street VARCHAR(100),
  city VARCHAR(100),
  district VARCHAR(100),
  gn_division VARCHAR(100)
  sms_alert BOOLEAN DEFAULT FALSE
 )

skills(
  skill_id INT PK,
  skill_name VARCHAR(100)
)

skills_volunteers(
  user_id INT PK FK → volunteers(user_id),
  skill_id INT PK FK → skills(skill_id)
);

volunteer_preferences(
  preference_id INT PK,
  preference_name VARCHAR(100)
);

volunteer_preference_volunteers(
  user_id INT PK FK → volunteers(user_id),
  preference_id INT PK FK → volunteer_preferences(preference_id)
);

ngos(
  user_id INT PK FK → users(user_id),
  organization_name VARCHAR(150),
    registration_number VARCHAR(100),
    years_of_operation INT,
    address VARCHAR(255),
  contact_person_name VARCHAR(100),
  contact_person_telephone VARCHAR(20),
  contact_person_email VARCHAR(150)

);

grama_niladhari(
    user_id INT PK FK → users(user_id),
    name VARCHAR(150),
    contact_number VARCHAR(20),
    address VARCHAR(255),
    gn_division VARCHAR(100),
    service_number VARCHAR(50),
    gn_division_number VARCHAR(50),
);

-- Password Reset Token Management
password_reset_tokens(
    token VARCHAR(64) PK,
    user_id INT FK → users(user_id) ON DELETE CASCADE,
    expires_at TIMESTAMP NOT NULL,
    used TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_prt_user_expires (user_id, expires_at)
);