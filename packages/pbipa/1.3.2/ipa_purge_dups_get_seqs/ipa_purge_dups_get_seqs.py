from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ipa_Purge_Dups_Get_Seqs_V0_1_0 = CommandToolBuilder(tool="ipa_purge_dups_get_seqs", base_command=["ipa_purge_dups_get_seqs"], inputs=[ToolInput(tag="in_bool_only_remove", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="BOOL     only remove sequences at the ends of a contig [FALSE]")), ToolInput(tag="in_bool_split_contigs", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="BOOL     split contigs [FALSE]")), ToolInput(tag="in_str_prefix_output", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="STR      prefix of output files [NULL]")), ToolInput(tag="in_bool_keep_contigs", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="BOOL     keep high coverage contigs in the primary contig set [FALSE]")), ToolInput(tag="in_bool_add_prefix", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="BOOL     do not add prefix to haplotigs [FALSE]")), ToolInput(tag="in_int_maximum_gap", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="INT      maximum gap size between duplications [10k]")), ToolInput(tag="in_int_minimum_primary", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="INT      minimum primary contig length [10k]")), ToolInput(tag="in_int_minimum_ratio", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="INT      minimum ratio of remaining primary contig length to the original contig length [0.05]")), ToolInput(tag="in_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dups_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa_Purge_Dups_Get_Seqs_V0_1_0().translate("wdl")

