from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phylocsf___Annotate_With_Tracks_V0_1_0 = CommandToolBuilder(tool="phylocsf++_annotate_with_tracks", base_command=["phylocsf++", "annotate-with-tracks"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path where output GFF/GTF will be written to. If it does not\nexist, it will be created. Default: output files are stored next\nto the input files.\n")), ToolInput(tag="in_phylo_csf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylocsf___Annotate_With_Tracks_V0_1_0().translate("wdl")

