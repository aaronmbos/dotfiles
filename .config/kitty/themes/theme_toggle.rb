# frozen_string_literal: true

current_hour = Time.now.hour

light_theme = 'GitHub Light'
dark_theme = 'GitHub Dark Dimmed'
dark_hour_night = 16
dark_hour_morning = 8

current_theme = current_hour >= dark_hour_night || current_hour < dark_hour_morning ? dark_theme : light_theme

exec("kitty +kitten themes --reload-in=all #{current_theme}")
