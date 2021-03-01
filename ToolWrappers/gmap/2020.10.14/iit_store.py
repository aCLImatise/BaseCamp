from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Iit_Store_V0_1_0 = CommandToolBuilder(tool="iit_store", base_command=["iit_store"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output iit file")), ToolInput(tag="in_old_format", input_type=Boolean(optional=True), prefix="--oldformat", doc=InputDocumentation(doc="Old format for intervals:\n<start> <optional end> <optional div> <optional type>")), ToolInput(tag="in_accession_only", input_type=Boolean(optional=True), prefix="--accession-only", doc=InputDocumentation(doc="Process only the first word of each FASTA header, and ignore the rest of the line")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="--fields", doc=InputDocumentation(doc="Annotation consists of separate fields")), ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="Parse input file in gff3 format")), ToolInput(tag="in_label", input_type=String(optional=True), prefix="--label", doc=InputDocumentation(doc="For gff input, the feature attribute to use (default is ID)")), ToolInput(tag="in_sort", input_type=Int(optional=True), prefix="--sort", doc=InputDocumentation(doc="Sorting of divisions: none, alpha, numeric-alpha, or chrom (default)\nnumeric-alpha: chr1 chr1_random chr2 chr10 chr10_random chrM chrUn chrX chrY\nchrom: chr1 chr2 chr10 chrX chrY chrM chr1_random chr10_random chrUn\nNote 1: For sorting purposes, any initial 'chr' will be ignored\nNote 2: For chrom, X, Y, M, MT (or chrX, chrY, and so on) are special")), ToolInput(tag="in_i_it_version", input_type=Int(optional=True), prefix="--iitversion", doc=InputDocumentation(doc="Desired iit version for output iit\n(default = 0, which means latest version)")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output iit file"))], container="quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iit_Store_V0_1_0().translate("wdl")

