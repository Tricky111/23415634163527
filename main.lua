local background = display.newRect(0, 0, 1080, 1080)
background:setFillColor( 0/255, 100/255, 255/255)

local AskTextField = display.newText( "Type The Answer In The Text Box Below.", display.contentCenterX + 1 , display.contentCenterY - 200, native.systemFont, 15)
AskTextField.id = "AskTextField"
AskTextField:setFillColor( 255, 255, 255 )

local AgeTextField = native.newTextField( display.contentCenterX + 1, display.contentCenterY - 150, 300, 75 )
AgeTextField.id = "AgeTextField"

local calculateButton = display.newImageRect( "e1.png", 200, 125 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY -50
calculateButton.id = "calculateButton"

local SubmitButton = display.newImageRect( "e3.png", 200, 50 )
SubmitButton.x = display.contentCenterX
SubmitButton.y = display.contentCenterY + 100
SubmitButton.id = "SubmitButton"

local letterText = display.newText( "Tap Generate", display.contentCenterX + 1 , display.contentCenterY +200, native.systemFont, 15 )
letterText.id = "letterText"

local AnswerText = display.newText( "", display.contentCenterX + 1 , display.contentCenterY +100, native.systemFont, 12 )
AnswerText.id = "AnswerText"

local function calculateButtonTouch( event )

             letter = math.random(1, 10)

            if letter == 1 then
                letterText.text = "What Year is It"

            elseif letter == 2 then
                letterText.text = "What Year Did WW2 Start"

            elseif letter == 3 then
                letterText.text = "What Year Did WW2 End"

            elseif letter == 4 then
                letterText.text = "What Year Did WW1 Start"

            elseif letter == 5 then
                letterText.text = "What Year Did WW1 End"

            elseif letter == 6 then
                letterText.text = "What Year Did Canada Become A Country"

            elseif letter == 7 then
                letterText.text = "What Year Did The Russian Civil War Start"

            elseif letter == 8 then
                letterText.text = "What Year Was France Invaded In WW2"

            elseif letter == 9 then
                letterText.text = "What Year Was D-Day"

            elseif letter == 10 then
                letterText.text = "What Year Was Russia Invaded In WW2"

            end
        end

calculateButton:addEventListener( "touch", calculateButtonTouch )

local function SubmitButtonTouch( event )
Age = tonumber(AgeTextField.text)
	
	if letter == 1 and Age == 2019 then
		letterText.text = "Correct"

		elseif letter == 2 and Age == 1939 then
			letterText.text = "Correct"

			elseif letter == 3 and Age == 1945 then
				letterText.text = "Correct"

				elseif letter == 4 and Age == 1914 then
					letterText.text = "Correct"

					elseif letter == 5 and Age == 1918 then
						letterText.text = "Correct"

						elseif letter == 6 and Age == 1867 then
							letterText.text = "Correct"

							elseif letter == 7 and Age == 1917 then
								letterText.text = "Correct"

								elseif letter == 8 and Age == 1940 then
									letterText.text = "Correct"

									elseif letter == 9 and Age == 1944 then
										letterText.text = "Correct"

										elseif letter == 10 and Age == 1941 then
											letterText.text = "Correct"

											else letterText.text = "Incorrect"

		end
	end

	SubmitButton:addEventListener( "touch", SubmitButtonTouch )
