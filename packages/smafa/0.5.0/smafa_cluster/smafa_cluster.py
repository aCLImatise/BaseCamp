from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Smafa_Cluster_V0_1_0 = CommandToolBuilder(tool="smafa_cluster", base_command=["smafa", "cluster"], inputs=[ToolInput(tag="in_amino_acid", input_type=Boolean(optional=True), prefix="--amino-acid", doc=InputDocumentation(doc="Sequences are amino acid [default: nucleotide]")), ToolInput(tag="in_fragment_method", input_type=Boolean(optional=True), prefix="--fragment-method", doc=InputDocumentation(doc="Use the 'fragment' method for clustering")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Unless there is an error, do not print logging information")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print extra debug logging information")), ToolInput(tag="in_divergence", input_type=Int(optional=True), prefix="--divergence", doc=InputDocumentation(doc="Maximum number of mismatches in reported hits [default: 5]")), ToolInput(tag="in_km_er_length", input_type=Int(optional=True), prefix="--kmer-length", doc=InputDocumentation(doc="Length of kmer to query with [default 5]")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smafa_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

