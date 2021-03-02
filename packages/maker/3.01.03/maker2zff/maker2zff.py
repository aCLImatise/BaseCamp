from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean

Maker2Zff_V0_1_0 = CommandToolBuilder(tool="maker2zff", base_command=["maker2zff"], inputs=[ToolInput(tag="in_fraction_confirmed_est", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="The fraction of splice sites confirmed by an EST alignment, default 0.5")), ToolInput(tag="in_fraction_an_est", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="The fraction of exons that overlap an EST alignment, default 0.5")), ToolInput(tag="in_fraction_exons_any", input_type=Float(optional=True), prefix="-o", doc=InputDocumentation(doc="The fraction of exons that overlap any evidence (EST or Protein), default 0.5")), ToolInput(tag="in_fraction_confirmed_abinitio", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="The fraction of splice sites confirmed by an ab-initio prediction, default 0")), ToolInput(tag="in_fraction_an_abinitio", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="The fraction of exons that overlap an ab-initio prediction, default 0")), ToolInput(tag="in_min_length_protein", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="The min length of the protein sequence produced by the mRNA")), ToolInput(tag="in_max_aed_allow", input_type=Int(optional=True), prefix="-x", doc=InputDocumentation(doc="Max AED to allow 0.5 is default")), ToolInput(tag="in_no_filtering_accept", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="No filtering.  Accept all."))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maker2Zff_V0_1_0().translate("wdl")

