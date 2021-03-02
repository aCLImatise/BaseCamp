from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Alfred_Qc_V0_1_0 = CommandToolBuilder(tool="alfred_qc", base_command=["alfred", "qc"], inputs=[ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg   reference fasta file (required)")), ToolInput(tag="in_arg_bed_file", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[ --bed ] arg         bed file with target regions (optional)")), ToolInput(tag="in_arg_sample_name", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="[ --name ] arg        sample name (optional, otherwise SM tag is used)")), ToolInput(tag="in_arg_gzipped_file", input_type=File(optional=True), prefix="-j", doc=InputDocumentation(doc="[ --jsonout ] arg     gzipped json output file")), ToolInput(tag="in_arg_gzipped_tsv", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg     gzipped tsv output file")), ToolInput(tag="in_evaluate_secondary_alignments", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ --secondary ]       evaluate secondary alignments")), ToolInput(tag="in_evaluate_supplementary_alignments", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="[ --supplementary ]   evaluate supplementary alignments")), ToolInput(tag="in_arg_only_analyze", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="[ --rg ] arg          only analyze this read group (optional)")), ToolInput(tag="in__ignore_readgroups", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --ignore ]          ignore read-groups")), ToolInput(tag="in_aligned_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_gzipped_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_gzipped_file", type_hint=File()), doc=OutputDocumentation(doc="[ --jsonout ] arg     gzipped json output file")), ToolOutput(tag="out_arg_gzipped_tsv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_gzipped_tsv", type_hint=File()), doc=OutputDocumentation(doc="[ --outfile ] arg     gzipped tsv output file"))], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Qc_V0_1_0().translate("wdl")

