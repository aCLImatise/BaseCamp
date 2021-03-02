from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int, File

Uniprobe2Meme_V0_1_0 = CommandToolBuilder(tool="uniprobe2meme", base_command=["uniprobe2meme"], inputs=[ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="-rna", doc=InputDocumentation(doc="output an RNA database instead of a DNA database.")), ToolInput(tag="in_skip", input_type=String(optional=True), prefix="-skip", doc=InputDocumentation(doc="skip this ID (may be repeated)")), ToolInput(tag="in_num_seqs", input_type=Int(optional=True), prefix="-numseqs", doc=InputDocumentation(doc="assume frequencies based on this many\nsequences; default: 20")), ToolInput(tag="in_truncate_names", input_type=Boolean(optional=True), prefix="-truncate_names", doc=InputDocumentation(doc="truncate motif names at first underscore")), ToolInput(tag="in_numbers", input_type=Boolean(optional=True), prefix="-numbers", doc=InputDocumentation(doc="use numbers instead of strings as motif names")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: uniform background")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <total pseudocounts> times letter\nbackground to each frequency; default: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix, too;\ndefault: print frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; The untruncated ID is\nsubstituted for MOTIF_NAME; default: no url")), ToolInput(tag="in_sg", input_type=File(optional=True), prefix="-sg", doc=InputDocumentation(doc="TSV file with motif name, ID and source publication\nin columns 1, 2 & 6 (+1 to column# if first blank)")), ToolInput(tag="in_sp", input_type=String(optional=True), prefix="-sp", doc=InputDocumentation(doc="only consider lines in <sg_file_name> that match\nthis source publication; default: use all lines"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniprobe2Meme_V0_1_0().translate("wdl")

