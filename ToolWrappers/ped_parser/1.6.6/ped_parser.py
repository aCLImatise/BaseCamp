from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ped_Parser_V0_1_0 = CommandToolBuilder(tool="ped_parser", base_command=["ped_parser"], inputs=[ToolInput(tag="in_family_type", input_type=Boolean(optional=True), prefix="--family_type", doc=InputDocumentation(doc="[ped|alt|cmms|mip]\nIf the analysis use one of the known setups,\nplease specify which one. Default is ped")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Specify the path to a file where results\nshould be stored.")), ToolInput(tag="in_cmms_check", input_type=Boolean(optional=True), prefix="--cmms_check", doc=InputDocumentation(doc="If the id is in cmms format.")), ToolInput(tag="in_to_json", input_type=Boolean(optional=True), prefix="--to_json", doc=InputDocumentation(doc="Print the ped file in json format.")), ToolInput(tag="in_to_madeline", input_type=Boolean(optional=True), prefix="--to_madeline", doc=InputDocumentation(doc="Print the ped file in madeline format.")), ToolInput(tag="in_to_ped", input_type=Boolean(optional=True), prefix="--to_ped", doc=InputDocumentation(doc="Print the ped file in ped format with")), ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output.")), ToolInput(tag="in_family_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ped_Parser_V0_1_0().translate("wdl", allow_empty_container=True)

