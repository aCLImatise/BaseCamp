from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamin_Update_Py_V0_1_0 = CommandToolBuilder(tool="simkaMin_update.py", base_command=["simkaMin_update.py"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    input file of datasets (datasets to add to existing simka results")), ToolInput(tag="in_in_to_update", input_type=Boolean(optional=True), prefix="-in-to-update", doc=InputDocumentation(doc="(1 arg) :    path to existing simka results to update (existing results will be overwritten)")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="-bin", doc=InputDocumentation(doc="(1 arg) :    path to simkaMinCore program (to be specified if not in PATH, or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores [Default: 0]")), ToolInput(tag="in_max_memory", input_type=Boolean(optional=True), prefix="-max-memory", doc=InputDocumentation(doc="(1 arg) :    max memory (MB) [Default: 8000]")), ToolInput(tag="in_filter", input_type=Boolean(optional=True), prefix="-filter", doc=InputDocumentation(doc="(0 arg) :    filter out k-mer seen one time (potentially erroneous)")), ToolInput(tag="in_max_reads", input_type=Boolean(optional=True), prefix="-max-reads", doc=InputDocumentation(doc="(1 arg) :    maximum number of reads per sample to process [Default: 0]")), ToolInput(tag="in_min_read_size", input_type=Boolean(optional=True), prefix="-min-read-size", doc=InputDocumentation(doc="(1 arg) :    minimal size a read should have to be kept [Default: 0]")), ToolInput(tag="in_min_shannon_index", input_type=Boolean(optional=True), prefix="-min-shannon-index", doc=InputDocumentation(doc="(1 arg) :    minimal Shannon index a read should have to be kept. Float in [0,2] [Default: 0]"))], outputs=[], container="quay.io/biocontainers/simka:1.5.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamin_Update_Py_V0_1_0().translate("wdl")

