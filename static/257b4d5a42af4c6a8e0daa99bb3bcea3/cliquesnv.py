from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Directory, Int

Cliquesnv_V0_1_0 = CommandToolBuilder(tool="cliquesnv", base_command=["cliquesnv"], inputs=[ToolInput(tag="in__run_one", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="-- run one of predefined methods. Methods are: snv-pacbio, snv-illumina, snv-pacbio-vc, snv-illumina-vc")), ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="/usr/name/tmp/reads.sam -- input file")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="-outDir", doc=InputDocumentation(doc="/usr/name/tmp/ -- folder with output.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="-- how many threads to use in parallel. Usually just the number of cores is the best choice"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="/usr/name/tmp/ -- folder with output."))], container="quay.io/biocontainers/cliquesnv:1.5.7--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cliquesnv_V0_1_0().translate("wdl")

