from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Layoutreads_V0_1_0 = CommandToolBuilder(tool="layoutReads", base_command=["layoutReads"], inputs=[ToolInput(tag="in_seqpath_mandatory_path", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="seqPath        Mandatory path to an existing seqStore.")), ToolInput(tag="in_ovlpath_mandatory_path", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc="ovlPath        Mandatory path to an existing ovlStore.")), ToolInput(tag="in_readlistpath_mandatory_path", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="readListPath   Mandatory path to an existing ovlStore.")), ToolInput(tag="in_gs", input_type=Int(optional=True), prefix="-gs", doc=InputDocumentation(doc="Mandatory genome size in bp.")), ToolInput(tag="in_outprefix_mandatory_prefix", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="outPrefix      Mandatory prefix for the output files.")), ToolInput(tag="in_em", input_type=Int(optional=True), prefix="-eM", doc=InputDocumentation(doc="Max error rate of overlaps to load.")), ToolInput(tag="in_eg", input_type=Int(optional=True), prefix="-eg", doc=InputDocumentation(doc="Max error rate of overlaps to use for placing contained reads.")), ToolInput(tag="in_no_contains", input_type=Boolean(optional=True), prefix="-nocontains", doc=InputDocumentation(doc="Do not place contained reads.")), ToolInput(tag="in_parameters", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Layoutreads_V0_1_0().translate("wdl")

