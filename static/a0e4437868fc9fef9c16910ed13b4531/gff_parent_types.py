from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Gff_Parent_Types_V0_1_0 = CommandToolBuilder(tool="gff_parent_types", base_command=["gff_parent_types"], inputs=[ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Feature types to exclude from consideration")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress all warning messages. Cannot use with '-v'.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning once)\n")), ToolInput(tag="in_in_file_dot_gff", input_type=String(), position=0, doc=InputDocumentation(doc="Input GFF3 file")), ToolInput(tag="in_outfile_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc="Name of output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff_Parent_Types_V0_1_0().translate("wdl", allow_empty_container=True)

