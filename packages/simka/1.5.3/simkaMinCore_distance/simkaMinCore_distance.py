from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamincore_Distance_V0_1_0 = CommandToolBuilder(tool="simkaMinCore_distance", base_command=["simkaMinCore", "distance"], inputs=[ToolInput(tag="in_in_one", input_type=Boolean(optional=True), prefix="-in1", doc=InputDocumentation(doc="(1 arg) :    filename to a sketch file to compare with -in2")), ToolInput(tag="in_in_two", input_type=Boolean(optional=True), prefix="-in2", doc=InputDocumentation(doc="(1 arg) :    filename to a sketch file to compare with -in1")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc="(1 arg) :    output dir for distance matrices  [default './simkaMin_results']")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="(0 arg) :    version")), ToolInput(tag="in_start_i", input_type=Boolean(optional=True), prefix="-start-i", doc=InputDocumentation(doc="(1 arg) :    start i (row)  [default '0']")), ToolInput(tag="in_start_j", input_type=Boolean(optional=True), prefix="-start-j", doc=InputDocumentation(doc="(1 arg) :    start j (column)  [default '0']")), ToolInput(tag="in_n_i", input_type=Boolean(optional=True), prefix="-n-i", doc=InputDocumentation(doc="(1 arg) :    Nb datasets to process (row)  [default '0']")), ToolInput(tag="in_n_j", input_type=Boolean(optional=True), prefix="-n-j", doc=InputDocumentation(doc="(1 arg) :    Nb datasets to process (column)  [default '0']"))], outputs=[], container="quay.io/biocontainers/simka:1.5.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamincore_Distance_V0_1_0().translate("wdl")

