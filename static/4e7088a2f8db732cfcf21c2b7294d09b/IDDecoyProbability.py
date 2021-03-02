from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Iddecoyprobability_V0_1_0 = CommandToolBuilder(tool="IDDecoyProbability", base_command=["IDDecoyProbability"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Identification input of combined forward decoy search (reindex with PeptideIndexer first) (valid formats: 'idXML')")), ToolInput(tag="in_fwd_in", input_type=File(optional=True), prefix="-fwd_in", doc=InputDocumentation(doc="Identification input of forward run (valid formats: 'idXML')")), ToolInput(tag="in_rev_in", input_type=File(optional=True), prefix="-rev_in", doc=InputDocumentation(doc="Identification input of decoy run (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*       Identification output with forward scores converted to probabilities (valid formats: 'idXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iddecoyprobability_V0_1_0().translate("wdl")

