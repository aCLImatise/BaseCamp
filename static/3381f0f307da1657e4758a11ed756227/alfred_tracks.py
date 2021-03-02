from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Alfred_Tracks_V0_1_0 = CommandToolBuilder(tool="alfred_tracks", base_command=["alfred", "tracks"], inputs=[ToolInput(tag="in_arg_min_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="[ --map-qual ] arg (=10)           min. mapping quality")), ToolInput(tag="in_arg_pairs_normalize", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[ --normalize ] arg (=30000000)    #pairs to normalize to (0: no\nnormalization)")), ToolInput(tag="in_arg_coverage_type", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --covtype ] arg (=0)             coverage type (0: sequencing coverage,\n1: spanning coverage, 2: footprinting)")), ToolInput(tag="in__arg_resolution", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="[ --resolution ] arg (=0.200000003)\nfractional resolution ]0,1]")), ToolInput(tag="in_arg_track_file", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --outfile ] arg (='track.gz')    track file")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[ --format ] arg (=bedgraph)       output format [bedgraph|bed|wiggle|raw]")), ToolInput(tag="in_aligned_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/alfred:0.2.3--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alfred_Tracks_V0_1_0().translate("wdl")

