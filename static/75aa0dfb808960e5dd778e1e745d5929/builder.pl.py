from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Builder_Pl_V0_1_0 = CommandToolBuilder(tool="builder.pl", base_command=["builder.pl"], inputs=[ToolInput(tag="in_newick", input_type=Boolean(optional=True), prefix="--newick", doc=InputDocumentation(doc="- Guide tree in newick format (same names as fasta files without suffix .fna)")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="- Directory of fasta files (.fna)")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="- User defined database name")), ToolInput(tag="in_blacklist", input_type=Boolean(optional=True), prefix="--blacklist", doc=InputDocumentation(doc="- .list file of k-mers unwanted in database (human, plasmids etc)")), ToolInput(tag="in_word", input_type=Boolean(optional=True), prefix="--word", doc=InputDocumentation(doc="- K-mer length used in database building and later searching (default 32)")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="- Minimal amout of k-mers in node to be considered as subroot (default 250)")), ToolInput(tag="in_greater", input_type=Boolean(optional=True), prefix="--greater", doc=InputDocumentation(doc="- Maximum times child could have more k-mers than parent (default 250)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="- Number of cores used")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="- Maximum number of k-mers in one list (default 100000)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Builder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

