from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean, Int

Canu_V0_1_0 = CommandToolBuilder(tool="canu", base_command=["canu"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="\")), ToolInput(tag="in_d", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="\")), ToolInput(tag="in_pac_bio_hifi", input_type=Boolean(optional=True), prefix="-pacbio-hifi", doc=InputDocumentation(doc="] file1 file2 ...")), ToolInput(tag="in_haplotype", input_type=Boolean(optional=True), prefix="-haplotype", doc=InputDocumentation(doc="- generate haplotype-specific reads")), ToolInput(tag="in_correct", input_type=Boolean(optional=True), prefix="-correct", doc=InputDocumentation(doc="- generate corrected reads")), ToolInput(tag="in_trim", input_type=Boolean(optional=True), prefix="-trim", doc=InputDocumentation(doc="- generate trimmed reads")), ToolInput(tag="in_assemble", input_type=Boolean(optional=True), prefix="-assemble", doc=InputDocumentation(doc="- generate an assembly")), ToolInput(tag="in_trim_assemble", input_type=Boolean(optional=True), prefix="-trim-assemble", doc=InputDocumentation(doc="- generate trimmed reads and then assemble them")), ToolInput(tag="in_haplotype_billy", input_type=Int(optional=True), prefix="-haplotypeBILLY", doc=InputDocumentation(doc="billy2.fasta.gz")), ToolInput(tag="in_pac_bio", input_type=Boolean(optional=True), prefix="-pacbio", doc=InputDocumentation(doc="<files>")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="-citation", doc=InputDocumentation(doc="")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="")), ToolInput(tag="in_assembled_dot", input_type=String(), position=0, doc=InputDocumentation(doc="It is used primarily to estimate coverage in reads, NOT as the desired"))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Canu_V0_1_0().translate("wdl")

