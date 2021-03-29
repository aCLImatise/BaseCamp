from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Hapenum_V0_1_0 = CommandToolBuilder(tool="hapenum", base_command=["hapenum"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The input VCF/BCF file (use file:sample to specify\na sample)")), ToolInput(tag="in_output_dot", input_type=File(optional=True), prefix="--output-dot", doc=InputDocumentation(doc="Write a dot file with the reference graph.")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Write a fasta file with all possible haplotypes.")), ToolInput(tag="in_arg_location_subset", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --location ] arg      The location / subset.")), ToolInput(tag="in_arg_reference_fasta", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --reference ] arg     The reference fasta file.")), ToolInput(tag="in_arg_apply_filtering", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --apply-filters ] arg Apply filtering in VCF.")), ToolInput(tag="in_arg_preprocess_variants", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="[ --preprocess ] arg    Preprocess variants")), ToolInput(tag="in_max_n_haplotypes", input_type=Int(optional=True), prefix="--max-n-haplotypes", doc=InputDocumentation(doc="Maximum number of haplotypes to enumerate."))], outputs=[], container="quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hapenum_V0_1_0().translate("wdl")

