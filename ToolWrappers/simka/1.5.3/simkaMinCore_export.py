from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Simkamincore_Export_V0_1_0 = CommandToolBuilder(tool="simkaMinCore_export", base_command=["simkaMinCore", "export"], inputs=[ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="(1 arg) :    input dir containing distance matrices in binary format (-out argument of ./simkaMin distance)")), ToolInput(tag="in_in_one", input_type=Boolean(optional=True), prefix="-in1", doc=InputDocumentation(doc="(1 arg) :    first used sketch file (-in1 argument of ./simkaMin distance)")), ToolInput(tag="in_in_two", input_type=Boolean(optional=True), prefix="-in2", doc=InputDocumentation(doc="(1 arg) :    second used sketch file (-in2 argument of ./simkaMin distance)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="-out", doc=InputDocumentation(doc="(1 arg) :    output dir for distance matrices  [default './simkaMin_results']")), ToolInput(tag="in_nb_cores", input_type=Boolean(optional=True), prefix="-nb-cores", doc=InputDocumentation(doc="(1 arg) :    number of cores  [default '0']")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="(1 arg) :    verbosity level  [default '1']")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="(0 arg) :    version"))], outputs=[], container="quay.io/biocontainers/simka:1.5.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simkamincore_Export_V0_1_0().translate("wdl")

