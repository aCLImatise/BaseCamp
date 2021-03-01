from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Ssu_Esl_Afetch_V0_1_0 = CommandToolBuilder(tool="ssu_esl_afetch", base_command=["ssu-esl-afetch"], inputs=[ToolInput(tag="in_second_cmdline_arg", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": second cmdline arg is a file of names to retrieve")), ToolInput(tag="in_output_alignments_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output alignments to file <f> instead of stdout")), ToolInput(tag="in_output_alignment_file", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc=": output alignment to file named <key>")), ToolInput(tag="in_in_format", input_type=String(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify that <msafile> is in format <s>")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc=": index the <msafile>, creating <msafile>.ssi")), ToolInput(tag="in_msa_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_alignments_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_alignments_file", type_hint=File()), doc=OutputDocumentation(doc=": output alignments to file <f> instead of stdout")), ToolOutput(tag="out_output_alignment_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_alignment_file", type_hint=File()), doc=OutputDocumentation(doc=": output alignment to file named <key>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Afetch_V0_1_0().translate("wdl", allow_empty_container=True)

