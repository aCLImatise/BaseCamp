from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Riboloco_Convert_Gtf_V0_1_0 = CommandToolBuilder(tool="riboloco_convert_gtf", base_command=["riboloco_convert_gtf"], inputs=[ToolInput(tag="in_input_gtf", input_type=File(optional=True), prefix="--input_gtf", doc=InputDocumentation(doc="A gtf file with your genome annotation. Can be .gz\ncompressed.")), ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="--output_filename", doc=InputDocumentation(doc="The outfile filename")), ToolInput(tag="in_filter_for_longest", input_type=Boolean(optional=True), prefix="--filter_for_longest", doc=InputDocumentation(doc="Only use the longest protein coding transcript\nassociated with each gene.")), ToolInput(tag="in_no_fast_a", input_type=Boolean(optional=True), prefix="--no_fasta", doc=InputDocumentation(doc="Don't generate a fasta of transcripts")), ToolInput(tag="in_stop_correction", input_type=Int(optional=True), prefix="--stop_correction", doc=InputDocumentation(doc="Add 3 nt for stop codon. Can be changed to 0 depending\non whether the annotation includes the stop codon\nwithin the annotated CDSs.")), ToolInput(tag="in_feature_type_word", input_type=String(optional=True), prefix="--feature_type_word", doc=InputDocumentation(doc="Which transcript types to filter for. Set to 'all' to\ndisable. Default=protein_coding")), ToolInput(tag="in_transcript_id_word", input_type=String(optional=True), prefix="--transcript_id_word", doc=InputDocumentation(doc="The key word that signifies exons. Default=exon")), ToolInput(tag="in_early_stop", input_type=Int(optional=True), prefix="--early_stop", doc=InputDocumentation(doc="Stop after n reads parsed. -1 to disable (default)")), ToolInput(tag="in_bypass_tx_type_filter", input_type=Boolean(optional=True), prefix="--bypass_tx_type_filter", doc=InputDocumentation(doc="Sets CDS to same as transcript. Useful for writing out\neg snoRNAs\n"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="The outfile filename"))], container="quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboloco_Convert_Gtf_V0_1_0().translate("wdl")

