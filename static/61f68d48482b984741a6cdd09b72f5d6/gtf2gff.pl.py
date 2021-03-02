from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gtf2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="gtf2gff.pl", base_command=["gtf2gff.pl"], inputs=[ToolInput(tag="in_print_exon", input_type=Boolean(optional=True), prefix="--printExon", doc=InputDocumentation(doc="print exon features (may include CDS and UTR parts)")), ToolInput(tag="in_print_utr", input_type=Boolean(optional=True), prefix="--printUTR", doc=InputDocumentation(doc="print UTR features")), ToolInput(tag="in_print_intron", input_type=Boolean(optional=True), prefix="--printIntron", doc=InputDocumentation(doc="print intron features")), ToolInput(tag="in_gff_three", input_type=Boolean(optional=True), prefix="--gff3", doc=InputDocumentation(doc="output in gff3 format")), ToolInput(tag="in_include_stop_in_cds", input_type=Boolean(optional=True), prefix="--includeStopInCDS", doc=InputDocumentation(doc="include stop codon in the CDS")), ToolInput(tag="in_out", input_type=String(), position=0, doc=InputDocumentation(doc="gff output file"))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtf2Gff_Pl_V0_1_0().translate("wdl")

