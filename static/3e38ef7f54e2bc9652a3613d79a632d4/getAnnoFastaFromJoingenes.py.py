from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Getannofastafromjoingenes_Py_V0_1_0 = CommandToolBuilder(tool="getAnnoFastaFromJoingenes.py", base_command=["getAnnoFastaFromJoingenes.py"], inputs=[ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="genome sequence file (FASTA-format)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="name stem pf output file with coding sequences and\nprotein sequences (FASTA-format); will be extended by\n.codingseq/.aa")), ToolInput(tag="in_table", input_type=Int(optional=True), prefix="--table", doc=InputDocumentation(doc="Translational code table number (INT)")), ToolInput(tag="in_filter_out_invalid_stops", input_type=String(optional=True), prefix="--filter_out_invalid_stops", doc=InputDocumentation(doc="Suppress output of protein sequences that contain\ninternal stop codons.")), ToolInput(tag="in_print_format_examples", input_type=Boolean(optional=True), prefix="--print_format_examples", doc=InputDocumentation(doc="Print gtf/gff3 input format examples, do not perform\nanalysis")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="file with CDS coordinates (GTF-format)")), ToolInput(tag="in_gff_three", input_type=Int(optional=True), prefix="--gff3", doc=InputDocumentation(doc="file with CDS coordinates (GFF3 format)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="name stem pf output file with coding sequences and\nprotein sequences (FASTA-format); will be extended by\n.codingseq/.aa"))], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getannofastafromjoingenes_Py_V0_1_0().translate("wdl")

