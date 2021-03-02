from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Regtools_Junctions_Annotate_V0_1_0 = CommandToolBuilder(tool="regtools_junctions_annotate", base_command=["regtools", "junctions", "annotate"], inputs=[ToolInput(tag="in_single_exon_genes", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="single exon genes")), ToolInput(tag="in_file_write_output", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="The file to write output to. [STDOUT]")), ToolInput(tag="in_junctions_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotations_dot_gtf", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_write_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_write_output", type_hint=File()), doc=OutputDocumentation(doc="The file to write output to. [STDOUT]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Regtools_Junctions_Annotate_V0_1_0().translate("wdl", allow_empty_container=True)

