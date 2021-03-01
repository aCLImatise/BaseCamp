from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Pbcromwell_Rm_Las_V0_1_0 = CommandToolBuilder(tool="falconc_pbcromwell_rm_las", base_command=["falconc", "pbcromwell-rm-las"], inputs=[ToolInput(tag="in_command_string_command", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --command=  string  'find . -name \'*.las\''  set command")), ToolInput(tag="in__verbose_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="=, --verbose=  int     1                         set verbose")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="bool    false                     set dry_run")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="--help-syntax                                      advanced:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Pbcromwell_Rm_Las_V0_1_0().translate("wdl", allow_empty_container=True)

