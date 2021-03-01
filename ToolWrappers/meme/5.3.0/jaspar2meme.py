from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String, Directory

Jaspar2Meme_V0_1_0 = CommandToolBuilder(tool="jaspar2meme", base_command=["jaspar2meme"], inputs=[ToolInput(tag="in_bundle", input_type=Boolean(optional=True), prefix="-bundle", doc=InputDocumentation(doc="read a single file containing many JASPAR\ncount matrices in 2014 or 2016 format with\ntheir names.")), ToolInput(tag="in_pfm", input_type=Boolean(optional=True), prefix="-pfm", doc=InputDocumentation(doc="read JASPAR count files (.pfm);\ndefault: site files (.sites)")), ToolInput(tag="in_cm", input_type=Boolean(optional=True), prefix="-cm", doc=InputDocumentation(doc="read count file with line labels 'A|' etc. (.cm);\ndefault: site files (.sites)")), ToolInput(tag="in_numbers", input_type=Boolean(optional=True), prefix="-numbers", doc=InputDocumentation(doc="use numbers instead of strings as motif names")), ToolInput(tag="in_strands", input_type=Int(optional=True), prefix="-strands", doc=InputDocumentation(doc="|2    print '+ -' '+' on the MEME strand line;\ndefault: 2 (prints '+ -')")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies in MEME")), ToolInput(tag="in_b_file", input_type=String(optional=True), prefix="-bfile", doc=InputDocumentation(doc="; default: uniform frequencies")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <A> times background frequency to\neach count when computing letter frequencies\ndefault: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; The motif name\nis substituted for MOTIF_NAME;")), ToolInput(tag="in_jaspar_directory_vertical_line_pfm_bundle", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jaspar2Meme_V0_1_0().translate("wdl")

