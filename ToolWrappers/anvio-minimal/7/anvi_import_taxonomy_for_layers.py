from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Anvi_Import_Taxonomy_For_Layers_V0_1_0 = CommandToolBuilder(tool="anvi_import_taxonomy_for_layers", base_command=["anvi-import-taxonomy-for-layers"], inputs=[ToolInput(tag="in_profile_db", input_type=String(optional=True), prefix="--profile-db", doc=InputDocumentation(doc="Anvi'o profile database (default: None)")), ToolInput(tag="in_parser", input_type=Int(optional=True), prefix="--parser", doc=InputDocumentation(doc="Parser to make sense of the input files. There are 1\nparsers readily available: ['krakenuniq']. (default:\nNone)")), ToolInput(tag="in_s_input_files", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\nInput file(s) for selected parser. Each parser (except\n'blank') requires input files to process that you\ngenerate before running anvio. Please see the\ndocumentation for details. (default: None)")), ToolInput(tag="in_min_abundance", input_type=Int(optional=True), prefix="--min-abundance", doc=InputDocumentation(doc="Short read-based taxonomy can be extremely noisy.\nTherefore, here we have defeault minimum percentage\ncutoff of 0.1% to eliminate any taxon that occurs less\nthan that in a given input file. (default: 0.1)")), ToolInput(tag="in_layer_taxonomy", input_type=String(), position=0, doc=InputDocumentation(doc="🍺 More on `anvi-import-taxonomy-for-layers`:"))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Import_Taxonomy_For_Layers_V0_1_0().translate("wdl")

