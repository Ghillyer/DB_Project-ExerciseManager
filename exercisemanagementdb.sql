-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 08:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercisemanagementdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `exerciseroutines`
--

CREATE TABLE `exerciseroutines` (
  `routine_id` bigint(20) UNSIGNED NOT NULL,
  `routine_name` varchar(50) NOT NULL,
  `exercise_1` varchar(100) NOT NULL,
  `exercise_2` varchar(100) NOT NULL,
  `exercise_3` varchar(100) NOT NULL,
  `exercise_4` varchar(100) NOT NULL,
  `exercise_5` varchar(100) NOT NULL,
  `exercise_6` varchar(100) NOT NULL,
  `exercise_7` varchar(100) NOT NULL,
  `exercise_8` varchar(100) NOT NULL,
  `exercise_9` varchar(100) NOT NULL,
  `exercise_10` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exerciseroutines`
--

INSERT INTO `exerciseroutines` (`routine_id`, `routine_name`, `exercise_1`, `exercise_2`, `exercise_3`, `exercise_4`, `exercise_5`, `exercise_6`, `exercise_7`, `exercise_8`, `exercise_9`, `exercise_10`) VALUES
(1, 'Arm Day', 'Bicep Curls', 'Tricep Dips', 'Hammer Curls', 'Tricep Kickbacks', 'Preacher Curls', 'Skull Crushers', 'Barbell Curls', 'Close-Grip Bench Press', 'Concentration Curls', 'Cable Tricep Pushdowns'),
(2, 'Leg Day', 'Squats', 'Lunges', 'Leg Press', 'Deadlifts', 'Leg Extensions', 'Hamstring Curls', 'Calf Raises', 'Box Jumps', 'Step-Ups', 'Glute Bridges'),
(3, 'Chest Day', 'Bench Press', 'Incline Dumbbell Press', 'Decline Bench Press', 'Chest Flyes', 'Push-Ups', 'Dumbbell Pullover', 'Chest Press Machine', 'Pec Deck Machine', 'Cross Cable Chest Flyes', 'Medicine Ball Push-Ups'),
(4, 'Back Day', 'Pull-Ups', 'Lat Pulldowns', 'Bent Over Rows', 'Deadlifts', 'Single-Arm Dumbbell Rows', 'Face Pulls', 'T-Bar Rows', 'Seated Cable Rows', 'Hyperextensions', 'Close-Grip Lat Pulldowns'),
(5, 'Core Workout', 'Planks', 'Russian Twists', 'Hanging Leg Raises', 'Bicycle Crunches', 'Woodchoppers', 'Ab Rollouts', 'Mountain Climbers', 'Side Planks', 'Reverse Crunches', 'Dead Bug'),
(6, 'Cardio Day', 'Running', 'Cycling', 'Jump Rope', 'Rowing', 'High-Intensity Interval Training (HIIT)', 'Elliptical Trainer', 'Stair Climbing', 'Kickboxing', 'Swimming', 'Burpees'),
(7, 'Full Body Workout', 'Burpees', 'Squats', 'Push-Ups', 'Pull-Ups', 'Planks', 'Deadlifts', 'Mountain Climbers', 'Dumbbell Thrusters', 'Russian Twists', 'Jumping Jacks');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `ExerciseName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `MuscleGroupsTargeted` varchar(255) DEFAULT NULL,
  `DifficultyLevel` int(11) DEFAULT NULL,
  `EquipmentRequired` varchar(255) DEFAULT NULL,
  `ExerciseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`ExerciseName`, `Description`, `MuscleGroupsTargeted`, `DifficultyLevel`, `EquipmentRequired`, `ExerciseID`) VALUES
('Bar Dip', 'Bodyweight exercise for chest and triceps.', 'Chest, Triceps', 2, 'Parallel bars', 1),
('Bench Press', 'Compound exercise targeting chest, shoulders, and triceps.', 'Chest, Shoulders, Triceps', 3, 'Barbell', 2),
('Cable Chest Press', 'Isolation exercise for chest.', 'Chest', 2, 'Cable machine', 3),
('Close-Grip Bench Press', 'Variation of the bench press targeting triceps.', 'Triceps', 2, 'Barbell', 4),
('Close-Grip Feet-Up Bench Press', 'Bench press with feet elevated focusing on triceps.', 'Triceps', 3, 'Barbell, Bench', 5),
('Decline Bench Press', 'Bench press on a decline bench, emphasizing lower chest.', 'Lower Chest', 3, 'Barbell, Decline bench', 6),
('Dumbbell Chest Fly', 'Isolation exercise for chest using dumbbells.', 'Chest', 2, 'Dumbbells', 7),
('Dumbbell Chest Press', 'Compound exercise with dumbbells targeting chest and triceps.', 'Chest, Triceps', 2, 'Dumbbells', 8),
('Dumbbell Decline Chest Press', 'Decline bench press with dumbbells.', 'Lower Chest', 3, 'Dumbbells', 9),
('Dumbbell Floor Press', 'Floor press variation with dumbbells focusing on triceps.', 'Triceps', 2, 'Dumbbells', 10),
('Dumbbell Pullover', 'Dumbbell exercise targeting chest and upper body.', 'Chest, Upper Body', 2, 'Dumbbell', 11),
('Feet-Up Bench Press', 'Bench press with feet elevated, engaging upper chest.', 'Upper Chest', 3, 'Barbell, Bench', 12),
('Floor Press', 'Bench press variation performed on the floor.', 'Chest, Triceps', 2, 'Barbell, Floor', 13),
('Incline Bench Press', 'Bench press on an incline bench, targeting upper chest.', 'Upper Chest', 3, 'Barbell, Incline bench', 14),
('Incline Dumbbell Press', 'Dumbbell press on an incline bench for upper chest development.', 'Upper Chest', 2, 'Dumbbells, Incline bench', 15),
('Incline Push-Up', 'Push-up variation with hands elevated, emphasizing upper chest.', 'Upper Chest', 1, 'Bodyweight', 16),
('Kneeling Incline Push-Up', 'Incline push-up performed from a kneeling position.', 'Upper Chest', 1, 'Bodyweight', 17),
('Kneeling Push-Up', 'Basic push-up performed from a kneeling position.', 'Chest', 1, 'Bodyweight', 18),
('Machine Chest Fly', 'Isolation exercise using a chest fly machine.', 'Chest', 2, 'Machine', 19),
('Machine Chest Press', 'Compound exercise using a chest press machine.', 'Chest, Triceps', 2, 'Machine', 20),
('Pec Deck', 'Isolation exercise targeting the pectoral muscles.', 'Chest', 2, 'Pec deck machine', 21),
('Push-Up', 'Basic bodyweight exercise for chest and triceps.', 'Chest, Triceps', 1, 'Bodyweight', 22),
('Push-Up Against Wall', 'Push-up variation using a wall for assistance.', 'Chest', 1, 'Bodyweight, Wall', 23),
('Push-Ups With Feet in Rings', 'Push-up variation with feet suspended in rings.', 'Chest, Triceps', 2, 'Bodyweight, Rings', 24),
('Resistance Band Chest Fly', 'Isolation exercise for chest using resistance bands.', 'Chest', 1, 'Resistance bands', 25),
('Smith Machine Bench Press', 'Bench press using a Smith machine for stability.', 'Chest, Triceps', 3, 'Smith machine, Bench', 26),
('Smith Machine Incline Bench Press', 'Incline bench press using a Smith machine.', 'Upper Chest', 3, 'Smith machine, Incline bench', 27),
('Standing Cable Chest Fly', 'Isolation exercise using cable machine for chest development.', 'Chest', 2, 'Cable machine', 28),
('Standing Resistance Band Chest Fly', 'Isolation exercise using resistance bands for chest development.', 'Chest', 1, 'Resistance bands', 29),
('Band External Shoulder Rotation', 'Shoulder exercise using a resistance band for external rotation.', 'Shoulders', 1, 'Resistance band', 30),
('Band Internal Shoulder Rotation', 'Shoulder exercise using a resistance band for internal rotation.', 'Shoulders', 1, 'Resistance band', 31),
('Band Pull-Apart', 'Shoulder exercise involving pulling a resistance band apart.', 'Shoulders', 1, 'Resistance band', 32),
('Barbell Front Raise', 'Front deltoid isolation exercise using a barbell.', 'Front Delts', 2, 'Barbell', 33),
('Barbell Rear Delt Row', 'Rowing exercise targeting the rear delts with a barbell.', 'Rear Delts', 2, 'Barbell', 34),
('Barbell Upright Row', 'Shoulder exercise involving lifting a barbell in an upright position.', 'Shoulders', 2, 'Barbell', 35),
('Behind the Neck Press', 'Shoulder press performed behind the neck with a barbell.', 'Shoulders', 3, 'Barbell', 36),
('Cable Lateral Raise', 'Lateral raise exercise using a cable machine for shoulder development.', 'Shoulders', 2, 'Cable machine', 37),
('Cable Rear Delt Row', 'Rowing exercise targeting the rear delts with a cable machine.', 'Rear Delts', 2, 'Cable machine', 38),
('Dumbbell Front Raise', 'Isolation exercise for front delts using dumbbells.', 'Front Delts', 1, 'Dumbbells', 39),
('Dumbbell Horizontal Internal Shoulder Rotation', 'Internal shoulder rotation exercise using dumbbells.', 'Shoulders', 1, 'Dumbbells', 40),
('Dumbbell Horizontal External Shoulder Rotation', 'External shoulder rotation exercise using dumbbells.', 'Shoulders', 1, 'Dumbbells', 41),
('Dumbbell Lateral Raise', 'Isolation exercise for lateral delts using dumbbells.', 'Lateral Delts', 1, 'Dumbbells', 42),
('Dumbbell Rear Delt Row', 'Rowing exercise targeting the rear delts with dumbbells.', 'Rear Delts', 1, 'Dumbbells', 43),
('Dumbbell Shoulder Press', 'Shoulder press exercise using dumbbells.', 'Shoulders', 2, 'Dumbbells', 44),
('Face Pull', 'Shoulder exercise involving pulling a cable towards the face.', 'Shoulders', 2, 'Cable machine', 45),
('Front Hold', 'Isometric exercise holding weight in front for shoulder stability.', 'Shoulders', 1, 'Weight', 46),
('Lying Dumbbell External Shoulder Rotation', 'Lying down external shoulder rotation with dumbbell.', 'Shoulders', 1, 'Dumbbells', 47),
('Lying Dumbbell Internal Shoulder Rotation', 'Lying down internal shoulder rotation with dumbbell.', 'Shoulders', 1, 'Dumbbells', 48),
('Machine Lateral Raise', 'Lateral raise exercise using a machine for shoulder development.', 'Shoulders', 2, 'Machine', 49),
('Machine Shoulder Press', 'Shoulder press exercise using a machine for stability.', 'Shoulders', 2, 'Machine', 50),
('Monkey Row', 'Rowing exercise with a barbell resembling a monkey rowing.', 'Shoulders', 2, 'Barbell', 51),
('Overhead Press', 'Classic overhead press with a barbell.', 'Shoulders', 2, 'Barbell', 52),
('Plate Front Raise', 'Front raise exercise using a weight plate for resistance.', 'Front Delts', 1, 'Weight plate', 53),
('Power Jerk', 'Explosive movement involving a jerk with power.', 'Shoulders', 3, 'Barbell', 54),
('Push Press', 'Shoulder exercise involving a push press with a barbell.', 'Shoulders', 2, 'Barbell', 55),
('Reverse Cable Flyes', 'Reverse flye exercise using a cable machine for rear deltoids.', 'Rear Delts', 2, 'Cable machine', 56),
('Reverse Dumbbell Flyes', 'Reverse flye exercise using dumbbells for rear deltoids.', 'Rear Delts', 1, 'Dumbbells', 57),
('Reverse Machine Fly', 'Reverse flye exercise using a machine for rear deltoids.', 'Rear Delts', 2, 'Machine', 58),
('Seated Dumbbell Shoulder Press', 'Shoulder press exercise performed in a seated position with dumbbells.', 'Shoulders', 2, 'Dumbbells', 59),
('Seated Barbell Overhead Press', 'Overhead press with a barbell performed in a seated position.', 'Shoulders', 2, 'Barbell', 60),
('Seated Smith Machine Shoulder Press', 'Shoulder press using Smith machine performed in a seated position.', 'Shoulders', 2, 'Smith machine', 61),
('Snatch Grip Behind the Neck Press', 'Shoulder press with a snatch grip behind the neck.', 'Shoulders', 3, 'Barbell', 62),
('Squat Jerk', 'Jerk movement performed in a squat position for shoulders.', 'Shoulders', 3, 'Barbell', 63),
('Split Jerk', 'Jerk movement performed in a split stance for shoulders.', 'Shoulders', 3, 'Barbell', 64),
('Barbell Curl', 'Classic bicep exercise using a barbell for curling.', 'Biceps', 2, 'Barbell', 65),
('Barbell Preacher Curl', 'Preacher curl exercise targeting biceps with a barbell.', 'Biceps', 2, 'Barbell', 66),
('Bodyweight Curl', 'Bicep curl exercise using body weight for resistance.', 'Biceps', 1, 'Body weight', 67),
('Cable Curl With Bar', 'Bicep curl using a cable machine and a bar attachment.', 'Biceps', 2, 'Cable machine', 68),
('Cable Curl With Rope', 'Bicep curl using a cable machine and a rope attachment.', 'Biceps', 2, 'Cable machine', 69),
('Concentration Curl', 'Isolation exercise for biceps focusing on concentration.', 'Biceps', 2, 'Dumbbells', 70),
('Dumbbell Curl', 'Classic bicep exercise using dumbbells for curling.', 'Biceps', 2, 'Dumbbells', 71),
('Dumbbell Preacher Curl', 'Preacher curl exercise targeting biceps with dumbbells.', 'Biceps', 2, 'Dumbbells', 72),
('Hammer Curl', 'Bicep exercise with a neutral grip, similar to holding a hammer.', 'Biceps', 2, 'Dumbbells', 73),
('Incline Dumbbell Curl', 'Bicep curl exercise performed on an incline bench with dumbbells.', 'Biceps', 2, 'Dumbbells', 74),
('Machine Bicep Curl', 'Bicep curl exercise using a machine for resistance.', 'Biceps', 2, 'Machine', 75),
('Spider Curl', 'Isolation exercise for biceps performed on a spider curl bench.', 'Biceps', 2, 'Barbell', 76),
('Barbell Standing Triceps Extension', 'Triceps extension exercise using a barbell while standing.', 'Triceps', 2, 'Barbell', 77),
('Barbell Lying Triceps Extension', 'Triceps extension exercise using a barbell while lying down.', 'Triceps', 2, 'Barbell', 78),
('Bench Dip', 'Bodyweight triceps exercise using a bench for dipping.', 'Triceps', 1, 'Bench', 79),
('Close-Grip Push-Up', 'Triceps-focused push-up with hands positioned closer together.', 'Triceps', 1, 'Body weight', 80),
('Dumbbell Lying Triceps Extension', 'Triceps extension exercise using dumbbells while lying down.', 'Triceps', 2, 'Dumbbells', 81),
('Dumbbell Standing Triceps Extension', 'Triceps extension exercise using dumbbells while standing.', 'Triceps', 2, 'Dumbbells', 82),
('Overhead Cable Triceps Extension', 'Triceps extension exercise using a cable machine with an overhead attachment.', 'Triceps', 2, 'Cable machine', 83),
('Tricep Bodyweight Extension', 'Bodyweight triceps extension exercise.', 'Triceps', 1, 'Body weight', 84),
('Tricep Pushdown With Bar', 'Triceps pushdown exercise using a bar attachment on a cable machine.', 'Triceps', 2, 'Cable machine', 85),
('Tricep Pushdown With Rope', 'Triceps pushdown exercise using a rope attachment on a cable machine.', 'Triceps', 2, 'Cable machine', 86),
('Air Squat', 'Bodyweight squat exercise.', 'Legs', 1, 'Body weight', 87),
('Barbell Hack Squat', 'Squat exercise using a barbell with the heels elevated.', 'Legs', 3, 'Barbell', 88),
('Barbell Lunge', 'Lunges with a barbell across the shoulders.', 'Legs', 2, 'Barbell', 89),
('Barbell Walking Lunge', 'Walking lunges with a barbell across the shoulders.', 'Legs', 2, 'Barbell', 90),
('Belt Squat', 'Squat exercise using a specialized belt squat machine.', 'Legs', 3, 'Belt Squat Machine', 91),
('Body Weight Lunge', 'Lunges using body weight as resistance.', 'Legs', 1, 'Body weight', 92),
('Box Squat', 'Squat exercise performed onto a box or bench.', 'Legs', 2, 'Box', 93),
('Bulgarian Split Squat', 'Lunges with one foot elevated behind on a bench or platform.', 'Legs', 2, 'Body weight', 94),
('Chair Squat', 'Squat exercise using a chair for support.', 'Legs', 1, 'Chair', 95),
('Dumbbell Lunge', 'Lunges using dumbbells as resistance.', 'Legs', 2, 'Dumbbells', 96),
('Dumbbell Squat', 'Squat exercise using dumbbells as resistance.', 'Legs', 2, 'Dumbbells', 97),
('Front Squat', 'Squat exercise with the barbell in front of the body.', 'Legs', 3, 'Barbell', 98),
('Goblet Squat', 'Squat exercise holding a dumbbell or kettlebell close to the chest.', 'Legs', 2, 'Dumbbell/Kettlebell', 99),
('Hack Squat Machine', 'Squat exercise using a hack squat machine.', 'Legs', 3, 'Hack Squat Machine', 100),
('Half Air Squat', 'Partial range of motion bodyweight squat.', 'Legs', 1, 'Body weight', 101),
('Hip Adduction Machine', 'Machine exercise targeting the inner thighs.', 'Legs', 2, 'Machine', 102),
('Landmine Hack Squat', 'Squat exercise using a landmine attachment.', 'Legs', 2, 'Landmine', 103),
('Landmine Squat', 'Squat exercise using a landmine attachment.', 'Legs', 2, 'Landmine', 104),
('Leg Extension', 'Isolation exercise targeting the quadriceps using a leg extension machine.', 'Legs', 2, 'Leg Extension Machine', 105),
('Leg Press', 'Compound leg exercise using a leg press machine.', 'Legs', 3, 'Leg Press Machine', 106),
('Lying Leg Curl', 'Isolation exercise targeting the hamstrings using a leg curl machine.', 'Legs', 2, 'Leg Curl Machine', 107),
('Pause Squat', 'Squat exercise with a pause at the bottom of the movement.', 'Legs', 2, 'Barbell', 108),
('Romanian Deadlift', 'Deadlift variation focusing on the hamstrings and lower back.', 'Legs', 2, 'Barbell/Dumbbells', 109),
('Safety Bar Squat', 'Squat exercise using a safety squat bar for added comfort.', 'Legs', 3, 'Safety Squat Bar', 110),
('Seated Leg Curl', 'Isolation exercise targeting the hamstrings using a seated leg curl machine.', 'Legs', 2, 'Leg Curl Machine', 111),
('Shallow Body Weight Lunge', 'Shallow lunges using body weight as resistance.', 'Legs', 1, 'Body weight', 112),
('Side Lunges (Bodyweight)', 'Lateral lunges using body weight as resistance.', 'Legs', 1, 'Body weight', 113),
('Smith Machine Squat', 'Squat exercise using a Smith machine for added stability.', 'Legs', 3, 'Smith Machine', 114),
('Squat', 'Basic compound squat exercise.', 'Legs', 2, 'Barbell', 115),
('Step Up', 'Step-up exercise using a bench or platform.', 'Legs', 2, 'Bench/Platform', 116),
('Back Extension', 'Isolation exercise targeting the lower back muscles.', 'Back', 2, 'Hyperextension Bench', 117),
('Barbell Row', 'Compound exercise targeting the upper back muscles.', 'Back', 2, 'Barbell', 118),
('Barbell Shrug', 'Isolation exercise targeting the upper traps.', 'Back', 2, 'Barbell', 119),
('Block Snatch', 'Snatch exercise starting from a block or elevated surface.', 'Back', 3, 'Barbell', 120),
('Cable Close Grip Seated Row', 'Cable row exercise with a close grip attachment.', 'Back', 2, 'Cable Machine', 121),
('Cable Wide Grip Seated Row', 'Cable row exercise with a wide grip attachment.', 'Back', 2, 'Cable Machine', 122),
('Chin-Up', 'Bodyweight exercise targeting the upper back and biceps.', 'Back', 2, 'Pull-Up Bar', 123),
('Clean', 'Olympic weightlifting exercise involving lifting the barbell from the floor to the shoulders.', 'Back', 3, 'Barbell', 124),
('Clean and Jerk', 'Olympic weightlifting exercise involving lifting the barbell from the floor to the shoulders and then overhead.', 'Back', 3, 'Barbell', 125),
('Deadlift', 'Compound exercise targeting the entire back and lower body.', 'Back', 3, 'Barbell', 126),
('Deficit Deadlift', 'Deadlift variation performed on an elevated surface.', 'Back', 3, 'Barbell', 127),
('Dumbbell Deadlift', 'Deadlift exercise using dumbbells as resistance.', 'Back', 2, 'Dumbbells', 128),
('Dumbbell Row', 'Row exercise using dumbbells as resistance.', 'Back', 2, 'Dumbbells', 129),
('Dumbbell Shrug', 'Isolation exercise targeting the upper traps using dumbbells.', 'Back', 2, 'Dumbbells', 130),
('Floor Back Extension', 'Back extension exercise performed on the floor.', 'Back', 1, 'Body weight', 131),
('Good Morning', 'Compound exercise targeting the lower back and hamstrings.', 'Back', 2, 'Barbell', 132),
('Hang Clean', 'Clean exercise starting from a hanging position.', 'Back', 3, 'Barbell', 133),
('Hang Power Clean', 'Power clean exercise starting from a hanging position.', 'Back', 3, 'Barbell', 134),
('Hang Power Snatch', 'Power snatch exercise starting from a hanging position.', 'Back', 3, 'Barbell', 135),
('Hang Snatch', 'Snatch exercise starting from a hanging position.', 'Back', 3, 'Barbell', 136),
('Inverted Row', 'Bodyweight row exercise using a bar or suspension trainer.', 'Back', 2, 'Bar/Suspension Trainer', 137),
('Inverted Row with Underhand Grip', 'Bodyweight row exercise with an underhand grip.', 'Back', 2, 'Bar/Suspension Trainer', 138),
('Jefferson Curl', 'Isolation exercise involving spinal flexion with a barbell.', 'Back', 3, 'Barbell', 139),
('Kettlebell Swing', 'Hip hinge exercise using a kettlebell for power and posterior chain engagement.', 'Back', 2, 'Kettlebell', 140),
('Lat Pulldown With Pronated Grip', 'Lat pulldown exercise with a pronated (overhand) grip.', 'Back', 2, 'Lat Pulldown Machine', 141),
('Lat Pulldown With Supinated Grip', 'Lat pulldown exercise with a supinated (underhand) grip.', 'Back', 2, 'Lat Pulldown Machine', 142),
('One-Handed Cable Row', 'Single-arm cable row exercise targeting the lats.', 'Back', 2, 'Cable Machine', 143),
('One-Handed Lat Pulldown', 'Single-arm lat pulldown exercise targeting the lats.', 'Back', 2, 'Lat Pulldown Machine', 144),
('Pause Deadlift', 'Deadlift exercise with a pause at a specific point in the movement.', 'Back', 3, 'Barbell', 145),
('Pendlay Row', 'Row exercise where the barbell is pulled from the floor each rep.', 'Back', 2, 'Barbell', 146),
('Power Clean', 'Clean exercise performed explosively for power development.', 'Back', 3, 'Barbell', 147),
('Power Snatch', 'Snatch exercise performed explosively for power development.', 'Back', 3, 'Barbell', 148),
('Pull-Up', 'Bodyweight exercise targeting the upper back and lats.', 'Back', 2, 'Pull-Up Bar', 149),
('Rack Pull', 'Deadlift variation starting from an elevated position on a rack.', 'Back', 3, 'Barbell', 150),
('Seal Row', 'Row exercise performed lying face down on a raised bench.', 'Back', 2, 'Barbell', 151),
('Seated Machine Row', 'Machine row exercise performed in a seated position.', 'Back', 2, 'Machine', 152),
('Snatch', 'Olympic weightlifting exercise involving lifting the barbell from the floor to overhead in one motion.', 'Back', 3, 'Barbell', 153),
('Snatch Grip Deadlift', 'Deadlift variation using a wide grip similar to the snatch grip.', 'Back', 3, 'Barbell', 154),
('Stiff-Legged Deadlift', 'Deadlift variation with straight legs for increased hamstring stretch.', 'Back', 2, 'Barbell/Dumbbells', 155),
('Straight Arm Lat Pulldown', 'Lat pulldown exercise with arms kept straight throughout the movement.', 'Back', 2, 'Lat Pulldown Machine', 156),
('Sumo Deadlift', 'Deadlift variation with a wide sumo stance.', 'Back', 3, 'Barbell', 157),
('T-Bar Row', 'Row exercise using a T-Bar row machine or landmine attachment.', 'Back', 2, 'T-Bar Row Machine/Landmine', 158),
('Trap Bar Deadlift With High Handles', 'Deadlift variation using a trap bar with high handles.', 'Back', 3, 'Trap Bar', 159),
('Trap Bar Deadlift With Low Handles', 'Deadlift variation using a trap bar with low handles.', 'Back', 3, 'Trap Bar', 160),
('Banded Side Kicks', 'Lateral leg movement using a resistance band to target the glutes.', 'Glutes', 2, 'Resistance Band', 161),
('Cable Pull Through', 'Hip hinge exercise using a cable machine to target the glutes.', 'Glutes', 2, 'Cable Machine', 162),
('Clamshells', 'Abduction exercise for the outer glutes.', 'Glutes', 1, 'Body weight', 163),
('Dumbbell Romanian Deadlift', 'Hip hinge exercise using dumbbells to target the hamstrings and glutes.', 'Glutes, Hamstrings', 2, 'Dumbbells', 164),
('Dumbbell Frog Pumps', 'Bridge exercise with frog leg positioning using dumbbells for added resistance.', 'Glutes', 2, 'Dumbbells', 165),
('Fire Hydrants', 'Abduction exercise for the outer glutes performed on hands and knees.', 'Glutes', 1, 'Body weight', 166),
('Frog Pumps', 'Bridge exercise with frog leg positioning to target the glutes.', 'Glutes', 1, 'Body weight', 167),
('Glute Bridge', 'Bridge exercise targeting the glutes and hamstrings.', 'Glutes, Hamstrings', 1, 'Body weight', 168),
('Hip Abduction Against Band', 'Abduction exercise for the outer glutes using a resistance band.', 'Glutes', 2, 'Resistance Band', 169),
('Hip Abduction Machine', 'Machine-based abduction exercise targeting the glutes.', 'Glutes', 2, 'Machine', 170),
('Hip Thrust', 'Hip extension exercise targeting the glutes.', 'Glutes', 2, 'Bench/Barbell', 171),
('Hip Thrust Machine', 'Machine-based hip extension exercise targeting the glutes.', 'Glutes', 2, 'Machine', 172),
('Hip Thrust With Band Around Knees', 'Hip extension exercise with a resistance band around the knees for added difficulty.', 'Glutes', 2, 'Bench/Barbell, Resistance Band', 173),
('Lateral Walk With Band', 'Lateral walking exercise with a resistance band to target the glutes and hips.', 'Glutes, Hips', 2, 'Resistance Band', 174),
('Machine Glute Kickbacks', 'Machine-based kickback exercise targeting the glutes.', 'Glutes', 2, 'Machine', 175),
('One-Legged Glute Bridge', 'Bridge exercise performed unilaterally to target one glute at a time.', 'Glutes', 2, 'Body weight', 176),
('One-Legged Hip Thrust', 'Single-leg hip extension exercise targeting the glutes.', 'Glutes', 2, 'Bench/Barbell', 177),
('Romanian Deadlift', 'Hip hinge exercise targeting the hamstrings and glutes.', 'Glutes, Hamstrings', 2, 'Barbell/Dumbbells', 178),
('Single Leg Romanian Deadlift', 'Unilateral hip hinge exercise targeting the hamstrings and glutes.', 'Glutes, Hamstrings', 2, 'Dumbbells', 179),
('Standing Glute Kickback in Machine', 'Standing kickback exercise using a machine to target the glutes.', 'Glutes', 2, 'Machine', 180),
('Step Up', 'Leg exercise involving stepping up onto a platform, targeting the glutes and quads.', 'Glutes, Quads', 2, 'Box/Step', 181),
('Cable Crunch', 'Abdominal exercise using a cable machine for resistance.', 'Abs', 2, 'Cable Machine', 182),
('Crunch', 'Basic abdominal crunch targeting the rectus abdominis.', 'Abs', 1, 'Body weight', 183),
('Dead Bug', 'Core exercise involving alternating arm and leg movements while lying on the back.', 'Abs', 1, 'Body weight', 184),
('Hanging Leg Raise', 'Leg raise exercise performed hanging from a bar to target the lower abs.', 'Lower Abs', 3, 'Pull-Up Bar', 185),
('Hanging Knee Raise', 'Knee raise exercise performed hanging from a bar to target the lower abs.', 'Lower Abs', 2, 'Pull-Up Bar', 186),
('Hanging Sit-Up', 'Sit-up exercise performed hanging from a bar for added difficulty.', 'Abs', 3, 'Pull-Up Bar', 187),
('High to Low Wood Chop with Band', 'Wood chop exercise with a resistance band from high to low position.', 'Abs, Obliques', 2, 'Resistance Band', 188),
('Horizontal Wood Chop with Band', 'Wood chop exercise with a resistance band in a horizontal position.', 'Abs, Obliques', 2, 'Resistance Band', 189),
('Kneeling Ab Wheel Roll-Out', 'Ab wheel roll-out exercise performed from a kneeling position.', 'Abs', 3, 'Ab Wheel', 190),
('Kneeling Plank', 'Plank exercise performed from a kneeling position.', 'Abs', 1, 'Body weight', 191),
('Kneeling Side Plank', 'Side plank exercise performed from a kneeling position.', 'Abs, Obliques', 2, 'Body weight', 192),
('Lying Leg Raise', 'Leg raise exercise performed lying on the back to target the lower abs.', 'Lower Abs', 1, 'Body weight', 193),
('Lying Windshield Wiper', 'Core exercise involving controlled leg movement from side to side while lying on the back.', 'Abs, Obliques', 2, 'Body weight', 194),
('Lying Windshield Wiper with Bent Knees', 'Variation of the lying windshield wiper with bent knees for added difficulty.', 'Abs, Obliques', 3, 'Body weight', 195),
('Machine Crunch', 'Abdominal crunch exercise using a machine for resistance.', 'Abs', 2, 'Machine', 196),
('Mountain Climbers', 'Dynamic exercise involving alternating knee-to-chest movements while in a plank position.', 'Abs, Cardio', 2, 'Body weight', 197),
('Oblique Crunch', 'Crunch exercise with a twist to target the obliques.', 'Abs, Obliques', 1, 'Body weight', 198),
('Oblique Sit-Up', 'Sit-up exercise with a twist to target the obliques.', 'Abs, Obliques', 2, 'Body weight', 199),
('Plank', 'Static core exercise involving maintaining a plank position.', 'Abs', 1, 'Body weight', 200),
('Side Plank', 'Static core exercise involving maintaining a side plank position.', 'Abs, Obliques', 1, 'Body weight', 201),
('Sit-Up', 'Basic sit-up exercise targeting the rectus abdominis.', 'Abs', 1, 'Body weight', 202),
('Eccentric Heel Drop', 'Calf exercise focusing on the lowering (eccentric) phase of the movement.', 'Calves', 2, 'Body weight', 203),
('Heel Raise', 'Basic heel raise exercise targeting the calf muscles.', 'Calves', 1, 'Body weight', 204),
('Seated Calf Raise', 'Calf raise exercise performed in a seated position to target the calf muscles.', 'Calves', 2, 'Calf Raise Machine', 205),
('Standing Calf Raise', 'Calf raise exercise performed in a standing position to target the calf muscles.', 'Calves', 2, 'Smith Machine', 206),
('Barbell Wrist Curl', 'Wrist curl exercise using a barbell to target the forearm flexors and improve grip strength.', 'Forearm, Grip', 2, 'Barbell', 207),
('Barbell Wrist Curl Behind the Back', 'Wrist curl exercise performed behind the back to target the forearm flexors and improve grip strength.', 'Forearm, Grip', 2, 'Barbell', 208),
('Bar Hang', 'Hanging from a bar to challenge grip strength and forearm endurance.', 'Forearm, Grip', 2, 'Pull-Up Bar', 209),
('Dumbbell Wrist Curl', 'Wrist curl exercise using dumbbells to target the forearm flexors and improve grip strength.', 'Forearm, Grip', 2, 'Dumbbells', 210),
('Farmers Walk', 'Walking while carrying heavy weights in each hand to challenge grip strength and forearm endurance.', 'Forearm, Grip', 2, 'Dumbbells or Kettlebells', 211),
('Fat Bar Deadlift', 'Deadlift performed with a thicker barbell to increase grip strength and forearm engagement.', 'Forearm, Grip', 3, 'Barbell with larger diameter', 212),
('Gripper', 'Handheld grip strengthening device to target forearm muscles and improve grip strength.', 'Forearm, Grip', 1, 'Hand Gripper', 213),
('One-Handed Bar Hang', 'Hanging from a bar with one hand to focus on grip strength and forearm endurance.', 'Forearm, Grip', 2, 'Pull-Up Bar', 214),
('Plate Pinch', 'Pinching weight plates together to target grip strength and forearm muscles.', 'Forearm, Grip', 2, 'Weight Plates', 215),
('Plate Wrist Curl', 'Wrist curl exercise using weight plates to target the forearm flexors and improve grip strength.', 'Forearm, Grip', 2, 'Weight Plates', 216),
('Towel Pull-Up', 'Performing pull-ups using a towel for added grip challenge and forearm engagement.', 'Forearm, Grip', 2, 'Pull-Up Bar with Towel', 217),
('Barbell Wrist Extension', 'Wrist extension exercise using a barbell to target the forearm extensors and improve wrist strength.', 'Forearm', 2, 'Barbell', 218),
('Dumbbell Wrist Extension', 'Wrist extension exercise using dumbbells to target the forearm extensors and improve wrist strength.', 'Forearm', 2, 'Dumbbells', 219),
('Rowing Machine', 'Cardiovascular exercise using a rowing machine to engage multiple muscle groups and improve endurance.', 'Full Body', 2, 'Rowing Machine', 220),
('Stationary Bike', 'Cycling exercise using a stationary bike to improve cardiovascular health and lower body endurance.', 'Legs', 1, 'Stationary Bike', 221);

-- --------------------------------------------------------

--
-- Table structure for table `progress_tracker`
--

CREATE TABLE `progress_tracker` (
  `progress_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_recorded` date DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `workout_duration` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactInformation` varchar(255) DEFAULT NULL,
  `FitnessGoals` varchar(255) DEFAULT NULL,
  `MedicalHistoryAndRestrictions` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Age`, `Gender`, `ContactInformation`, `FitnessGoals`, `MedicalHistoryAndRestrictions`, `password`) VALUES
(10001, 'John Doe', 16, 'Male', 'john.doe@gmail.com', 'Muscle Gain', NULL, 'password123'),
(10002, 'Jane Smith', 30, 'Female', 'jane.smith@gmail.com', 'Weight Loss', 'No specific restrictions', 'secure456'),
(10003, 'Mike Johnson', 68, 'Male', 'mike.johnson@gmail.com', 'General Fitness', NULL, 'randompwd789'),
(10004, 'Emily Davis', 28, 'Female', 'emily.davis@gmail.com', 'Muscle Gain', 'High blood pressure', 'strongpwd987'),
(10005, 'Chris Williams', 35, 'Male', 'chris.williams@gmail.com', 'Weight Loss', NULL, 'chocolate2023'),
(10006, 'Alexandra White', 27, 'Female', 'alexandra.white@gmail.com', 'General Fitness', NULL, 'sunshine1day'),
(10007, 'Ryan Taylor', 32, 'Male', 'ryan.taylor@gmail.com', 'Muscle Gain', NULL, 'queenbee2023'),
(10008, 'Jessica Miller', 26, 'Female', 'jessica.miller@gmail.com', 'Weight Loss', NULL, 'password1234'),
(10009, 'Daniel Brown', 31, 'Male', 'daniel.brown@gmail.com', 'General Fitness', NULL, 'bluesky456'),
(10010, 'Amanda Davis', 29, 'Female', 'amanda.davis@gmail.com', 'Muscle Gain', NULL, 'trickypwd789'),
(10011, 'Michael Johnson', 33, 'Male', 'michael.johnson@gmail.com', 'Weight Loss', NULL, 'foxjump456'),
(10012, 'Ashley Wilson', 24, 'Female', 'ashley.wilson@gmail.com', 'General Fitness', NULL, 'mountain123'),
(10013, 'Matthew Harris', 72, 'Male', 'matthew.harris@gmail.com', 'Muscle Gain', 'Knee injury', 'grapefruit123'),
(10014, 'Olivia Martin', 27, 'Female', 'olivia.martin@gmail.com', 'Weight Loss', NULL, 'dragonfly789'),
(10015, 'Brian Davis', 60, 'Male', 'brian.davis@gmail.com', 'General Fitness', NULL, 'elephantwalk'),
(10016, 'Sophia Smith', 26, 'Female', 'sophia.smith@gmail.com', 'Muscle Gain', NULL, 'babytiger456'),
(10017, 'Christopher Johnson', 29, 'Male', 'christopher.johnson@gmail.com', 'Weight Loss', NULL, 'bestpassword'),
(10018, 'Emma Wilson', 31, 'Female', 'emma.wilson@gmail.com', 'General Fitness', NULL, 'passionate123'),
(10019, 'Tyler Brown', 34, 'Male', 'tyler.brown@gmail.com', 'Muscle Gain', NULL, 'rainbow456'),
(10020, 'Madison Taylor', 25, 'Female', 'madison.taylor@gmail.com', 'Weight Loss', NULL, 'winterwonder'),
(10021, 'Andrew Smith', 27, 'Male', 'andrew.smith@gmail.com', 'General Fitness', NULL, 'candycrush789'),
(10022, 'Abigail Davis', 28, 'Female', 'abigail.davis@gmail.com', 'Muscle Gain', NULL, 'blackcat123'),
(10023, 'David Wilson', 55, 'Male', 'david.wilson@gmail.com', 'Weight Loss', NULL, 'magical456'),
(10024, 'Grace Johnson', 29, 'Female', 'grace.johnson@gmail.com', 'General Fitness', NULL, 'breezyday789'),
(10025, 'Brandon Harris', 26, 'Male', 'brandon.harris@gmail.com', 'Muscle Gain', NULL, 'dancingsun123'),
(10026, 'Lily Martin', 32, 'Female', 'lily.martin@gmail.com', 'Weight Loss', NULL, 'appletree456'),
(10027, 'Jordan Taylor', 28, 'Male', 'jordan.taylor@gmail.com', 'General Fitness', NULL, 'palmtree123'),
(10028, 'Chloe Wilson', 31, 'Female', 'chloe.wilson@gmail.com', 'Muscle Gain', 'Asthma', 'silvermoon456'),
(10029, 'Ethan Brown', 17, 'Male', 'ethan.brown@gmail.com', 'Weight Loss', NULL, 'cozyfire789'),
(10030, 'Hailey Smith', 29, 'Female', 'hailey.smith@gmail.com', 'General Fitness', NULL, 'happydays123'),
(10031, 'Caleb Johnson', 35, 'Male', 'caleb.johnson@gmail.com', 'Muscle Gain', NULL, 'blazingsunset'),
(10032, 'Zoe Davis', 27, 'Female', 'zoe.davis@gmail.com', 'Weight Loss', NULL, 'starrynights789'),
(10033, 'Gabriel Harris', 28, 'Male', 'gabriel.harris@gmail.com', 'General Fitness', NULL, 'warmcocoa456'),
(10034, 'Ava Wilson', 30, 'Female', 'ava.wilson@gmail.com', 'Muscle Gain', NULL, 'fairytale123\n'),
(10035, 'Justin Taylor', 26, 'Male', 'justin.taylor@gmail.com', 'Weight Loss', NULL, 'paradiseisle'),
(10036, 'Natalie Martin', 29, 'Female', 'natalie.martin@gmail.com', 'General Fitness', NULL, 'oceanbreeze789'),
(10037, 'Logan Brown', 32, 'Male', 'logan.brown@gmail.com', 'Muscle Gain', NULL, 'password1234'),
(10038, 'Samantha Smith', 28, 'Female', 'samantha.smith@gmail.com', 'Weight Loss', 'High cholesterol', 'magiclamp123'),
(10039, 'Dylan Wilson', 31, 'Male', 'dylan.wilson@gmail.com', 'General Fitness', NULL, 'snowflake456'),
(10040, 'Aria Davis', 27, 'Female', 'aria.davis@gmail.com', 'Muscle Gain', NULL, 'forgotten789'),
(10041, 'Mason Johnson', 29, 'Male', 'mason.johnson@gmail.com', 'Weight Loss', NULL, 'sillygoose1234'),
(10042, 'Kaylee Harris', 26, 'Female', 'kaylee.harris@gmail.com', 'General Fitness', NULL, 'whisperingwind'),
(10043, 'Elijah Taylor', 53, 'Male', 'elijah.taylor@gmail.com', 'Muscle Gain', NULL, 'moonlights123'),
(10044, 'Hannah Wilson', 47, 'Female', 'hannah.wilson@gmail.com', 'Weight Loss', NULL, 'passwordplant'),
(10045, 'Jackson Smith', 27, 'Male', 'jackson.smith@gmail.com', 'General Fitness', NULL, 'laughinglion'),
(10046, 'Scarlett Davis', 31, 'Female', 'scarlett.davis@gmail.com', 'Muscle Gain', NULL, 'marsrover456'),
(10047, 'Carter Martin', 30, 'Male', 'carter.martin@gmail.com', 'Weight Loss', NULL, 'coffeelover789'),
(10048, 'Sophie Brown', 28, 'Female', 'sophie.brown@gmail.com', 'General Fitness', NULL, 'paintedsky123'),
(10049, 'Owen Taylor', 16, 'Male', 'owen.taylor@gmail.com', 'Muscle Gain', NULL, 'treehugger1234'),
(10050, 'Isabella Wilson', 19, 'Female', 'isabella.wilson@gmail.com', 'Weight Loss', NULL, 'calmsea789'),
(10059, 'Garrett Hillyer', 20, 'Male', 'Ghillyer2@gmail.com', 'Weight loss', '', '$2y$10$Sc1G0WfJTItYKC2x7A49xupk/w0I6gM5gkd9ec8eZLSo9Xhla1EGC'),
(10060, 'Luke Gay', 20, 'Male', 'LukasG@gmail.com', 'Weight loss', '', '$2y$10$qE8xK1MnZgrEU7K52AMRWefqWNoUTnaggzUzYs2Lej8oqsxHqxwNy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exerciseroutines`
--
ALTER TABLE `exerciseroutines`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `progress_tracker`
--
ALTER TABLE `progress_tracker`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exerciseroutines`
--
ALTER TABLE `exerciseroutines`
  MODIFY `routine_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `progress_tracker`
--
ALTER TABLE `progress_tracker`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10061;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
