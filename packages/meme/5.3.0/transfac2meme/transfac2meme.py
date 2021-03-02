from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Transfac2Meme_V0_1_0 = CommandToolBuilder(tool="transfac2meme", base_command=["transfac2meme"], inputs=[ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="-rna", doc=InputDocumentation(doc="output an RNA database instead of a DNA database.")), ToolInput(tag="in_numbers", input_type=Boolean(optional=True), prefix="-numbers", doc=InputDocumentation(doc="use numbers instead of strings as motif names")), ToolInput(tag="in_use_acc", input_type=Boolean(optional=True), prefix="-use_acc", doc=InputDocumentation(doc="use accession names ('AC') instead of IDs")), ToolInput(tag="in_use_name", input_type=Boolean(optional=True), prefix="-use_name", doc=InputDocumentation(doc="use names ('NA') instead of IDs")), ToolInput(tag="in_ids", input_type=File(optional=True), prefix="-ids", doc=InputDocumentation(doc="keep any motifs listed in the file")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="-species", doc=InputDocumentation(doc="keep only motifs for this species")), ToolInput(tag="in_skip", input_type=String(optional=True), prefix="-skip", doc=InputDocumentation(doc="skip this ID (may be repeated)")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: uniform background")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <total pseudocounts> times letter\nbackground to each frequency; default: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix, too;\ndefault: print frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; The ID (or accession) is\nsubstituted for MOTIF_NAME, the accession\nis substituted for MOTIF_AC and the\nmotif ID is substituted for MOTIF_ID; default: no url")), ToolInput(tag="in_matrix_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transfac2Meme_V0_1_0().translate("wdl")

