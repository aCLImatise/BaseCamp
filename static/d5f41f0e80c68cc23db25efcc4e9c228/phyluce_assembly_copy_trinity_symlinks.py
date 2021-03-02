from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Directory

Phyluce_Assembly_Copy_Trinity_Symlinks_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_copy_trinity_symlinks", base_command=["phyluce_assembly_copy_trinity_symlinks"], inputs=[ToolInput(tag="in_assembly_symlinks", input_type=String(optional=True), prefix="--assembly-symlinks", doc=InputDocumentation(doc="The location of the trinity symlinks (trinity-\nassemblies/contigs)")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="The configuration file to use")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The output folder"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output folder"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Copy_Trinity_Symlinks_V0_1_0().translate("wdl", allow_empty_container=True)

