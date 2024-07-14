classic = require('libs.classic')
---@type Lume
lume = require('libs.lume')
inkutils = require('libs.inkutils')
PRNG = require('libs.prng')
serialization = require('libs.serialization')
---@type DelegateUtils
DelegateUtils = require('libs.delegate')

BaseValue = require('values.base')

ListItem = require('values.list.list_item')
ListValue = require('values.list.list_value')
ListDefinition = require('values.list.list_definition')
ListDefinitionOrigin = require('values.list.list_definition_origin')
InkList = require('values.list.inklist')

CreateValue = require('values.create')
BooleanValue = require('values.boolean')
ChoicePoint = require('values.choice_point')
Choice = require('values.choice')
Container = require('values.container')
ControlCommandType = require('constants.control_commands.types')
ControlCommandName = require('constants.control_commands.names')
ControlCommandValues = require('constants.control_commands.values')
ControlCommand = require('values.control_command')
DivertTarget = require('values.divert_target')
Divert = require('values.divert')
FloatValue = require('values.float')
Glue = require('values.glue')
IntValue = require('values.integer')
NativeFunctionCallName = require('constants.native_functions.names')
NativeFunctionCall = require('values.native_function')
Path = require('values.path')
Pointer = require('engine.pointer')
StringValue = require('values.string')
SearchResult = require('values.search_result')
---@type Tag
Tag = require('values.tag')
VariableAssignment = require('values.variable_assignment')
VariablePointerValue = require('values.variable_pointer')
VariableReference = require('values.variable_reference')
Void = require('values.void')

---@type VariableState
VariablesState = require('engine.variables_state')
---@type CallStackElement
CallStackElement = require('engine.call_stack.element')
---@type CallStackThread
CallStackThread = require('engine.call_stack.thread')
---@type CallStack
CallStack = require('engine.call_stack')

PushPopType = require('constants.push_pop_type')
---@type Flow
Flow = require('engine.flow')
---@type StatePatch
StatePatch = require('engine.state_patch')
---@type StoryState
StoryState = require('engine.story_state')