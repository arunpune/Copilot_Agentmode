import SwiftUI

@main
struct PersonalTrainerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var workoutType: String = ""
    @State private var workoutPlan: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Personal Trainer")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Select the part of the body to work out:")
                .font(.headline)

            Button("Upper Body") {
                workoutType = "Upper Body"
                workoutPlan = generateWorkout(for: workoutType)
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("Lower Body") {
                workoutType = "Lower Body"
                workoutPlan = generateWorkout(for: workoutType)
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("Core Strength") {
                workoutType = "Core Strength"
                workoutPlan = generateWorkout(for: workoutType)
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)

            if !workoutPlan.isEmpty {
                Text("Workout Plan for \(workoutType):")
                    .font(.headline)
                    .padding(.top)

                Text(workoutPlan)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }

            Spacer()
        }
        .padding()
    }

    func generateWorkout(for type: String) -> String {
        switch type {
        case "Upper Body":
            return "Push-ups, Pull-ups, Dumbbell Bench Press, Shoulder Press"
        case "Lower Body":
            return "Squats, Lunges, Deadlifts, Calf Raises"
        case "Core Strength":
            return "Plank, Russian Twists, Bicycle Crunches, Leg Raises"
        default:
            return "No workout available"
        }
    }
}
