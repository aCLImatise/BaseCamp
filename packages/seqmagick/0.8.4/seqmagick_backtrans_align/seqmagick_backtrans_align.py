from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Seqmagick_Backtrans_Align_V0_1_0 = CommandToolBuilder(tool="seqmagick_backtrans_align", base_command=["seqmagick", "backtrans-align"], inputs=[ToolInput(tag="in_out_file", input_type=File(optional=True), prefix="--out-file", doc=InputDocumentation(doc="Output destination. Default: STDOUT")), ToolInput(tag="in_translation_table", input_type=String(optional=True), prefix="--translation-table", doc=InputDocumentation(doc="Translation table to use. [Default: standard-\nambiguous]")), ToolInput(tag="in_fail_action", input_type=String(optional=True), prefix="--fail-action", doc=InputDocumentation(doc="Action to take on an ambiguous codon [default: fail]\n")), ToolInput(tag="in_protein_align", input_type=String(), position=0, doc=InputDocumentation(doc="Protein Alignment")), ToolInput(tag="in_nucl_align", input_type=String(), position=1, doc=InputDocumentation(doc="FASTA Alignment"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="Output destination. Default: STDOUT"))], container="quay.io/biocontainers/seqmagick:0.8.4--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Backtrans_Align_V0_1_0().translate("wdl")

