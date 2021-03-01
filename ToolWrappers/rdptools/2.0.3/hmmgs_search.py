from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Hmmgs_Search_V0_1_0 = CommandToolBuilder(tool="hmmgs_search", base_command=["hmmgs", "search"], inputs=[ToolInput(tag="in_normalize_hmm_input", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="don't normalize the hmm input")), ToolInput(tag="in_prune_search_improve", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="prune the search if the score does not improve after n_nodes (default 20, set to 0 to disable pruning)")), ToolInput(tag="in_limit_in_seconds", input_type=String(), position=0, doc=InputDocumentation(doc="dtime limit for individual searches (conservative suggestion = 100)")), ToolInput(tag="in_bloom_filter", input_type=String(), position=1, doc=InputDocumentation(doc="bloom filter built using hmmgs build")), ToolInput(tag="in_km_ers", input_type=String(), position=0, doc=InputDocumentation(doc="starting kmers (can use KmerFilter's fast_kmer_filter to identify starting kmers)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmgs_Search_V0_1_0().translate("wdl", allow_empty_container=True)

