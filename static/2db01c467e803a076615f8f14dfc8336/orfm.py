from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Orfm_V0_1_0 = CommandToolBuilder(tool="orfm", base_command=["orfm"], inputs=[ToolInput(tag="in_minimum_number_acids", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="minimum number of nucleotides (not amino acids) to call\nan ORF on [default: 96]")), ToolInput(tag="in_output_nucleotide_sequences", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="output nucleotide sequences of transcripts to this path\n[default: none]")), ToolInput(tag="in_ignore_sequence_read", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="ignore the sequence of the read beyond this, useful when\ncomparing reads from with different read lengths\n[default: none]")), ToolInput(tag="in_codon_table_translation", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="codon table for translation (see\nhttp://www.ncbi.nlm.nih.gov/Taxonomy/taxonomyhome.html/index.cgi?chapter=tgencodes\nfor details) [default: 1]")), ToolInput(tag="in_print_actual_codons", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="print the actual stop codons at sequence ends if encoded\n[default: do not]")), ToolInput(tag="in_only_print_orfs", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="only print those ORFs in the same frame as a stop codon\n[default: off]")), ToolInput(tag="in_run_version_is", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="do not run unless this version of OrfM is at least this version\nnumber (e.g. 0.7.1)")), ToolInput(tag="in_show_version_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="show version information")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_nucleotide_sequences", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_nucleotide_sequences", type_hint=File()), doc=OutputDocumentation(doc="output nucleotide sequences of transcripts to this path\n[default: none]"))], container="quay.io/biocontainers/orfm:1.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orfm_V0_1_0().translate("wdl")

