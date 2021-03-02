from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Query_Config_V0_1_0 = CommandToolBuilder(tool="query_config", base_command=["query_config"], inputs=[ToolInput(tag="in_machines", input_type=String(optional=True), prefix="--machines", doc=InputDocumentation(doc="; if you specify more than one of these arguments,")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debug information (very verbose) to file /query_config.log")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Add additional context (time and file) to log messages")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Print only warnings and error messages")), ToolInput(tag="in_comp_sets", input_type=Boolean(optional=True), prefix="--compsets", doc=InputDocumentation(doc="[{all,allactive,drv,cam,clm,cice,mpaso,mali,mpassi}]\nQuery compsets corresponding to the target component for the e3sm model. If no component is given, lists compsets defined by all components")), ToolInput(tag="in_components", input_type=Boolean(optional=True), prefix="--components", doc=InputDocumentation(doc="[{all,None,cam,datm,satm,xatm,vic,clm,dlnd,slnd,xlnd,mpassi,cice,dice,sice,xice,mpaso,docn,socn,xocn,mosart,drof,srof,xrof,mali,malisia,dglc,sglc,xglc,ww,dwav,swav,xwav,sesp,desp}]\nQuery component settings corresponding to the target component for e3sm model.\nIf the option is empty, then the lists settings defined by all components is output")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="Provide long output for queries"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Query_Config_V0_1_0().translate("wdl", allow_empty_container=True)

