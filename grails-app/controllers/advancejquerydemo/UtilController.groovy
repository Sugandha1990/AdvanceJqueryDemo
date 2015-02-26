package advancejquerydemo

import grails.converters.JSON

class UtilController {

    static defaultAction = "callBackDemo"

    def validationPluginDemo() {

    }

    def validateAge(int age){
        render age<100
    }

    def save(){
        render """******Form Submitted Successfully******"""
    }

    def callBackDemo(){

    }

    def JSONDemo(){

    }

    def ajaxDemo(){

    }

    def randomName(){
        Boolean isAllowed = params.boolean('isAllowed')
        List<String> names = ['Rohan', 'Vivek','Rohit','Puneet','Roni','Jeevesh']
        String errorMessage
//        if(!isAllowed)throw new Exception("hahahaha")
        if(isAllowed){
            String name = names.get(new Random().nextInt(names.size()))
            render(template: 'name', model: [name:name])
        }else{
            errorMessage = 'You are not allowed to see the data'
            render([status: false, errorMessage:errorMessage] as JSON)
        }
    }

    def createUser(){
        render([status: true] as JSON)
    }

    def getJsonDemo(){
    }

    def renderJSON(){
        render(["firstname":"Vivek","lastname":"Garg","age":25] as JSON)
    }

    def getScriptDemo(){

    }
}
