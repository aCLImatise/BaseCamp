from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, Int, Float

Genometreetk_Bootstrap_V0_1_0 = CommandToolBuilder(tool="genometreetk_bootstrap", base_command=["genometreetk", "bootstrap"], inputs=[ToolInput(tag="in_boot_dir", input_type=Directory(optional=True), prefix="--boot_dir", doc=InputDocumentation(doc="directory containing pre-computed bootstrap trees\n(must have '.tree', '.tre', or '.treefile' extension)")), ToolInput(tag="in_base_type", input_type=String(optional=True), prefix="--base_type", doc=InputDocumentation(doc="indicates if bases are nucleotides or amino acids\n(default: prot)")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="model of evolution to use (default: wag)")), ToolInput(tag="in_gamma", input_type=Boolean(optional=True), prefix="--gamma", doc=InputDocumentation(doc="indicates that the GAMMA model should be used")), ToolInput(tag="in_num_replicates", input_type=Int(optional=True), prefix="--num_replicates", doc=InputDocumentation(doc="number of bootstrap replicates to perform (default:\n100)")), ToolInput(tag="in_fraction", input_type=Float(optional=True), prefix="--fraction", doc=InputDocumentation(doc="fraction of alignment to subsample (default: 1.0)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of cpus (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_input_tree", input_type=String(), position=0, doc=InputDocumentation(doc="tree inferred from original data")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc="file containing multiple sequence alignment (or 'NONE'\nif '--boot_dir' is given)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genometreetk_Bootstrap_V0_1_0().translate("wdl", allow_empty_container=True)

