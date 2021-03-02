from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Agat_Sq_Repeats_Analyzer_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_repeats_analyzer.pl", base_command=["agat_sq_repeats_analyzer.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="STRING: Input GTF/GFF file(s). Several files can be processed at\nonce: -i file1 -i file2")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="That input is design to know the genome size in order to\ncalculate the percentage of the genome represented by each kind\nof repeats. You can provide an INTEGER or the genome in fasta\nformat. If you provide the fasta, the genome size will be\ncalculated on the fly.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format.")), ToolInput(tag="in_agat_sq_repeats_analyzer_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Repeats_Analyzer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

