from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String, Directory

Sites2Meme_V0_1_0 = CommandToolBuilder(tool="sites2meme", base_command=["sites2meme"], inputs=[ToolInput(tag="in_ext", input_type=File(optional=True), prefix="-ext", doc=InputDocumentation(doc="the file extension (with '.') of the sites files;\nthe file name minus the extension will be\nused as the motif identifer;\ndefault: expect an extension of '.txt'")), ToolInput(tag="in_map", input_type=File(optional=True), prefix="-map", doc=InputDocumentation(doc="tab separated file containing id, name pairs.")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="-protein", doc=InputDocumentation(doc="Sets the expected alphabet to protein;\ndefault: the expected alphabet is DNA")), ToolInput(tag="in_alph", input_type=File(optional=True), prefix="-alph", doc=InputDocumentation(doc="Set the expected alphabet to the defintion\nin the file; default: DNA")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: use uniform background")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <total pseudocounts> times letter\nbackground to each frequency; default: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix, too;\ndefault: print frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; The motif id is\nsubstituted for MOTIF_NAME")), ToolInput(tag="in_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sites2Meme_V0_1_0().translate("wdl")

