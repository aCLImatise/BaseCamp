from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Hmmpair_Sto_File_Max_Non_Canonical_Pair_Freq_V0_1_0 = CommandToolBuilder(tool="hmmpair_sto file_max non_canonical pair freq", base_command=["hmmpair", "sto file", "max non-canonical pair freq"], inputs=[ToolInput(tag="in_fragmentary_policy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_size_of_poly_n_flanking_seqs_in_forward_prob_calculations", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_uniform_distribution_of_profile_hmm_starts_and_ends", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmpair_Sto_File_Max_Non_Canonical_Pair_Freq_V0_1_0().translate("wdl", allow_empty_container=True)

