from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Allsub_V0_1_0 = CommandToolBuilder(tool="AllSub", base_command=["AllSub"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_absolute", input_type=Boolean(optional=True), prefix="--absolute", doc=InputDocumentation(doc="Specify a maximum absolute energy difference.\nDefault is determined by the length of the sequence.")), ToolInput(tag="in_constraint", input_type=Boolean(optional=True), prefix="--constraint", doc=InputDocumentation(doc="Specify a constraints file to be applied.\nDefault is to have no constraints applied.")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="--percent", doc=InputDocumentation(doc="Specify a maximum percent energy difference.\nDefault is determined by the length of the sequence.")), ToolInput(tag="in_temperature", input_type=Boolean(optional=True), prefix="--temperature", doc=InputDocumentation(doc="Specify the temperature at which calculation takes place in Kelvin.\nDefault is 310.15 K, which is 37 degrees C.\n")), ToolInput(tag="in_seq_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ct_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Allsub_V0_1_0().translate("wdl", allow_empty_container=True)

