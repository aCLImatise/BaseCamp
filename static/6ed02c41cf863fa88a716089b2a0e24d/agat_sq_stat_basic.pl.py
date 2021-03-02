from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Agat_Sq_Stat_Basic_Pl_V0_1_0 = CommandToolBuilder(tool="agat_sq_stat_basic.pl", base_command=["agat_sq_stat_basic.pl"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="STRING: Input GTF/GFF file. Several files can be processed at\nonce: -i file1 -i file2")), ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="--genome", doc=InputDocumentation(doc="That input is design to know the genome size in order to\ncalculate the percentage of the genome represented by each kind\nof feature type. You can provide an INTEGER or the genome in\nfasta format. If you provide the fasta, the genome size will be\ncalculated on the fly.")), ToolInput(tag="in_inflate", input_type=Boolean(optional=True), prefix="--inflate", doc=InputDocumentation(doc="Inflate the statistics taking into account feature with\nmulti-parents. Indeed to avoid redundant information, some gff\nfactorize identical features. e.g: one exon used in two\ndifferent isoform will be defined only once, and will have\nmultiple parent. By default the script count such feature only\nonce. Using the inflate option allows to count the feature and\nits size as many time there are parents.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format.")), ToolInput(tag="in_agat_sq_stat_basic_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="Description:"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="STRING: Output file. If no output file is specified, the output\nwill be written to STDOUT. The result is in tabulate format."))], container="quay.io/biocontainers/agat:0.5.1--pl526r35_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agat_Sq_Stat_Basic_Pl_V0_1_0().translate("wdl")

