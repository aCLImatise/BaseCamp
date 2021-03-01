from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Metachip_Rename_Seqs_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_rename_seqs", base_command=["MetaCHIP", "rename_seqs"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="input sequence file")), ToolInput(tag="in_inc_suffix", input_type=Boolean(optional=True), prefix="-inc_suffix", doc=InputDocumentation(doc="rename sequences by incrementally adding suffix to file")), ToolInput(tag="in_sep_out", input_type=String(optional=True), prefix="-sep_out", doc=InputDocumentation(doc="separator for output sequences, default: same as sep_in")), ToolInput(tag="in_number_columns_keep", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="the number of columns to keep")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="-prefix", doc=InputDocumentation(doc="add prefix to sequence")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="file extension")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="-sep_in SEP_IN    separator for input sequences"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Rename_Seqs_V0_1_0().translate("wdl")

