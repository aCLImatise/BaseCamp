from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Trim_Isoseq_Polya_V0_1_0 = CommandToolBuilder(tool="trim_isoseq_polyA", base_command=["trim_isoseq_polyA"], inputs=[ToolInput(tag="in_arg_input_fasta", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --input ] arg              The input fasta file with polyA, can be\ncompressed by gzip or bzip2")), ToolInput(tag="in_arg_hmm_model", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --model ] arg              HMM model file to use; if not specified, will\nuse default values")), ToolInput(tag="in_arg_fasta_file_polya", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --polyA_training ] arg     Fasta file with polyA sequences for training\nwith maximum-likelihood estimation")), ToolInput(tag="in_arg_fasta_file_nonpolya", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --non_polyA_training ] arg Fasta file with non-polyA sequences for\ntraining with maximum-likelihood estimation")), ToolInput(tag="in_arg_new_trained", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --new_model ] arg          New trained model file to output")), ToolInput(tag="in_color_sequences_outputinstead", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --color ]                  To color polyA sequences in the output\ninstead of trimming away them")), ToolInput(tag="in_arg_number_use", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[ --thread ] arg (=8)        Number of threads to use")), ToolInput(tag="in_input_generic_fasta", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="[ --generic ]                Input is generic fasta format; By default,\nthis script adjusts the coordinate in the\nheader section of output fasta format for\nIso-seq input. This option switches off this\nbehavior.\n"))], outputs=[ToolOutput(tag="out_arg_new_trained", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_new_trained", type_hint=File()), doc=OutputDocumentation(doc="[ --new_model ] arg          New trained model file to output"))], container="quay.io/biocontainers/trim_isoseq_polya:0.0.3--h7c8eefc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Isoseq_Polya_V0_1_0().translate("wdl")

