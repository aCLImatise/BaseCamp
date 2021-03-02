from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Sfld_Postprocess_V0_1_0 = CommandToolBuilder(tool="sfld_postprocess", base_command=["sfld_postprocess"], inputs=[ToolInput(tag="in_no_search", input_type=Boolean(optional=True), prefix="--nosearch", doc=InputDocumentation(doc="don't run search if output files exist")), ToolInput(tag="in_hmmer_path", input_type=File(optional=True), prefix="--hmmerpath", doc=InputDocumentation(doc="path to hmm* binaries (overrides $HMMER_PATH)")), ToolInput(tag="in_alignments", input_type=Boolean(optional=True), prefix="--alignments", doc=InputDocumentation(doc="HMMER alignment file")), ToolInput(tag="in_dom", input_type=Boolean(optional=True), prefix="--dom", doc=InputDocumentation(doc="HMMER domtblout file")), ToolInput(tag="in_hmmer_out", input_type=File(optional=True), prefix="--hmmer-out", doc=InputDocumentation(doc="HMMER output file")), ToolInput(tag="in_site_info", input_type=Boolean(optional=True), prefix="--site-info", doc=InputDocumentation(doc="SFLD reside annotation file")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="output text format [not implemented]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file (otherwise STDOUT)"))], outputs=[ToolOutput(tag="out_hmmer_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_hmmer_out", type_hint=File()), doc=OutputDocumentation(doc="HMMER output file")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file (otherwise STDOUT)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sfld_Postprocess_V0_1_0().translate("wdl", allow_empty_container=True)

