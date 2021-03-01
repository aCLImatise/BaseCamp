from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Kmer_Cov_V0_1_0 = CommandToolBuilder(tool="kmer_cov", base_command=["kmer-cov"], inputs=[ToolInput(tag="in_output_regions_features", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Output regions as Features")), ToolInput(tag="in_min_length_report", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="Min Length to report as a feature")), ToolInput(tag="in_allow_codes_treated", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="Allow Ambiguity Codes (treated as A's)")), ToolInput(tag="in_output_uniquerepeatunsure_fasta", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Output unique/repeat/unsure fasta sequences")), ToolInput(tag="in_repeats_covered_kmers", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Repeats are > <x>% covered by kmers")), ToolInput(tag="in_uniques_covered_kmers", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="Uniques are <= <x>% covered by kmers")), ToolInput(tag="in_km_er_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer_Cov_V0_1_0().translate("wdl", allow_empty_container=True)

