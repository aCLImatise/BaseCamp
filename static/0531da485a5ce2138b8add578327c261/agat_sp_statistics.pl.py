from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Agat_Sp_Statistics_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sp_statistics.pl", base_command=["agat_sp_statistics.pl"], inputs=[ToolInput(tag="in_gff", input_type=File(optional=True), prefix="--gff", doc=InputDocumentation(doc="Input GTF/GFF file.")), ToolInput(tag="in_gs", input_type=Int(optional=True), prefix="--gs", doc=InputDocumentation(doc="This option inform about the genome size in oder to compute more\nstatistics. You can give the size in Nucleotide or directly the\nfasta file.")), ToolInput(tag="in_when_option_used", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="When this option is used, an histogram of distribution of the\nfeatures will be printed in pdf files. (d means distribution, p\nmeans plot).")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2\nand 3 are increasing verbosity.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="File where will be written the result. If no output file is\nspecified, the output will be written to STDOUT.")), ToolInput(tag="in_agat_sp_statistics_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="File where will be written the result. If no output file is\nspecified, the output will be written to STDOUT."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sp_Statistics_Pl_V0_1_0().translate("wdl")

