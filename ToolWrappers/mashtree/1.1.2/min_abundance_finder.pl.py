from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Min_Abundance_Finder_Pl_V0_1_0 = CommandToolBuilder(tool="min_abundance_finder.pl", base_command=["min_abundance_finder.pl"], inputs=[ToolInput(tag="in_gt", input_type=Boolean(optional=True), prefix="--gt", doc=InputDocumentation(doc="1   Look for the first peak at this kmer count\nand then the next valley.")), ToolInput(tag="in_km_er", input_type=Boolean(optional=True), prefix="--kmer", doc=InputDocumentation(doc="21  kmer length")), ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="This script will apply one thread per kmer\nlength. Multiple values of k are tested to\nget a consensus value.")), ToolInput(tag="in_misc", input_type=String(), position=0, doc=InputDocumentation(doc="--kmerCounter ''  The kmer counting program to use.\nDefault: (empty string) auto-choose\nOptions: perl, jellyfish\nat /usr/local/bin/min_abundance_finder.pl line 46.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Min_Abundance_Finder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

