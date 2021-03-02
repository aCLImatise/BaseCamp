from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Matrix2Meme_V0_1_0 = CommandToolBuilder(tool="matrix2meme", base_command=["matrix2meme"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="-dna", doc=InputDocumentation(doc="use DNA IUPAC alphabet")), ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="-rna", doc=InputDocumentation(doc="use RNA IUPAC alphabet")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="-protein", doc=InputDocumentation(doc="use protein IUPAC alphabet")), ToolInput(tag="in_alph", input_type=File(optional=True), prefix="-alph", doc=InputDocumentation(doc="Alphabet definition; default: DNA")), ToolInput(tag="in_orien", input_type=String(optional=True), prefix="-orien", doc=InputDocumentation(doc="|col|row           The matrix orientation; default: auto")), ToolInput(tag="in_num_seqs", input_type=Int(optional=True), prefix="-numseqs", doc=InputDocumentation(doc="assume frequencies based on this many\nsequences when probabilty matrix is used;\ndefault: 20")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: uniform background")), ToolInput(tag="in_pseudo", input_type=Int(optional=True), prefix="-pseudo", doc=InputDocumentation(doc="add <total pseudocounts> times letter\nbackground to each frequency; default: 0")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="output the log-odds (PSSM) and frequency\n(PSPM) motifs; default: PSPM motif only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif; The motif name is\nsubstituted for MOTIF_NAME; default: no url"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matrix2Meme_V0_1_0().translate("wdl")

