from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Metaeuk_Unitesetstofasta_V0_1_0 = CommandToolBuilder(tool="metaeuk_unitesetstofasta", base_command=["metaeuk", "unitesetstofasta"], inputs=[ToolInput(tag="in_protein", input_type=Int(optional=True), prefix="--protein", doc=InputDocumentation(doc="translate the joint exons coding sequence to amino acids [0,1] [0]")), ToolInput(tag="in_translation_table", input_type=Int(optional=True), prefix="--translation-table", doc=InputDocumentation(doc="1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\n15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\n29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]")), ToolInput(tag="in_target_key", input_type=Int(optional=True), prefix="--target-key", doc=InputDocumentation(doc="write the target key (internal DB identifier) instead of its accession. By default (0) target accession will be written [0,1] [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [8]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/metaeuk:4.a0f584d--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaeuk_Unitesetstofasta_V0_1_0().translate("wdl")

