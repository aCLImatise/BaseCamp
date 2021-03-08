from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Directory, String

Mash_Taxscreen_V0_1_0 = CommandToolBuilder(tool="mash_taxscreen", base_command=["mash", "taxscreen"], inputs=[ToolInput(tag="in_parallelism_many_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Parallelism. This many threads will be spawned for processing. [1]")), ToolInput(tag="in_mapping_file_taxonomy", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="Mapping file from reference name to taxonomy ID")), ToolInput(tag="in_directory_containing_taxonomy", input_type=Directory(optional=True), prefix="-t", doc=InputDocumentation(doc="Directory containing NCBI taxonomy dump [.]")), ToolInput(tag="in_minimum_identity_report", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Minimum identity to report. Inclusive unless set to zero, in which\ncase only identities greater than zero (i.e. with at least one\nshared hash) will be reported. Set to -1 to output everything.\n(-1-1) [0]")), ToolInput(tag="in_maximum_pvalue_report", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Maximum p-value to report. (0-1) [1.0]")), ToolInput(tag="in_option", input_type=String(), position=0, doc=InputDocumentation(doc="Description (range) [default]"))], outputs=[], container="quay.io/biocontainers/mash:2.3--ha61e061_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mash_Taxscreen_V0_1_0().translate("wdl")

