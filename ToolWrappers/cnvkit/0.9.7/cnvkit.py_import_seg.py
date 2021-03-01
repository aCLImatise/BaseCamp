from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, Directory, String

Cnvkit_Py_Import_Seg_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_import_seg", base_command=["cnvkit.py", "import-seg"], inputs=[ToolInput(tag="in_chromosomes", input_type=Int(optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="Mapping of chromosome indexes to names. Syntax:\n'from1:to1,from2:to2'. Or use 'human' for the preset:\n'23:X,24:Y,25:M'.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix to add to chromosome names (e.g 'chr' to rename\n'8' in the SEG file to 'chr8' in the output).")), ToolInput(tag="in_from_log_one_zero", input_type=Boolean(optional=True), prefix="--from-log10", doc=InputDocumentation(doc="Convert base-10 logarithm values in the input to\nbase-2 logs.")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Output directory name.\n")), ToolInput(tag="in_samples_dot", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix to add to chromosome names (e.g 'chr' to rename\n'8' in the SEG file to 'chr8' in the output).")), ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Import_Seg_V0_1_0().translate("wdl", allow_empty_container=True)

