# CodingStyleFramework

Simple framework with SPM ability.

You can decorate string value to:
1. camelCase;
2. snakeCase;
3. kebabCase.

For usage insert Package URL into Package Dependencies in your project.

There is property wrapper @CodingStyle inside.
You need initialize it and choose decoration case you needed.
_______________
 #### @CodingStyle(wrappedValue: "first second third", style: .camelCase) var str: String
 Gives you 
 #### firstSecondThird
 ________________
 #### @CodingStyle(wrappedValue: "first second third", style: .kebabCase) var str: String
 Gives you 
 #### first-second-third
 ________________
  #### @CodingStyle(wrappedValue: "first second third", style: .snakeCase) var str: String
 Gives you 
 #### first_second_third
 ________________
 
 Don't forget to add
  #### import CodingStyle
