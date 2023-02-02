require 'csv'


matrix = {
  'BRO' => { 'BSN' => { 'W' => 10, 'L' => 12 },
             'CHC' => { 'W' => 15, 'L' => 7 },
             'CIN' => { 'W' => 15, 'L' => 7 },
             'NYG' => { 'W' => 14, 'L' => 8 }
           },
  'BSN' => { 'BRO' => { 'W' => 12, 'L' => 10 },
             'CHC' => { 'W' => 13, 'L' => 9 },
             'CIN' => { 'W' => 13, 'L' => 9 },
             'NYG' => { 'W' => 13, 'L' => 9 }
           },
  'CHC' => { 'BRO' => { 'W' => 7, 'L' => 15 },
             'BSN' => { 'W' => 9, 'L' => 13 },
             'CIN' => { 'W' => 12, 'L' => 10 },
             'NYG' => { 'W' => 7, 'L' => 15 }
           },
  'CIN' => { 'BRO' => { 'W' => 7, 'L' => 15 },
             'BSN' => { 'W' => 9, 'L' => 13 },
             'CHC' => { 'W' => 10, 'L' => 12 },
             'NYG' => { 'W' => 13, 'L' => 9 }
           },
  'NYG' => { 'BRO' => { 'W' => 8, 'L' => 14 },
             'BSN' => { 'W' => 9, 'L' => 13 },
             'CHC' => { 'W' => 15, 'L' => 7 },
             'CIN' => { 'W' => 9, 'L' => 13 }
           }
}


teams = matrix.keys


header = [' '] + teams


rows = teams.map do |team|
  [team] + teams.map do |opponent|
    if team == opponent
      '-'
    else
      matrix[team][opponent]['W']
    end
  end
end


CSV.open('matrix.csv', 'w') do |csv|
  csv << header
  rows.each { |row| csv << row }
end