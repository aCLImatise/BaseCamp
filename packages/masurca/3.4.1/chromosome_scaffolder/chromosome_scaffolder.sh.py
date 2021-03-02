from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Chromosome_Scaffolder_Sh_V0_1_0 = CommandToolBuilder(tool="chromosome_scaffolder.sh", base_command=["chromosome_scaffolder.sh"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="MANDATORY")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="MANDATORY")), ToolInput(tag="in_minimum_sequence_similarity", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="<minimum sequence similarity percentage: default 97>")), ToolInput(tag="in_merge_equence_alignments", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="<merge equence alignments slack: default 100000>")), ToolInput(tag="in_nb", input_type=String(optional=True), prefix="-nb", doc=InputDocumentation(doc="not align reads to query contigs and do not attempt to break at misassemblies: default off")), ToolInput(tag="in_mandatory_nb_set", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="MANDATORY unless -nb set")), ToolInput(tag="in_sm", input_type=Boolean(optional=True), prefix="-sm", doc=InputDocumentation(doc="<samtools memory to use while sorting, need to have at least this much* number of threads PHYSICAL RAM: default 1G>")), ToolInput(tag="in_hf", input_type=String(optional=True), prefix="-hf", doc=InputDocumentation(doc="Pacbio HIFI reads -- speeds up the alignment")), ToolInput(tag="in_cl", input_type=Boolean(optional=True), prefix="-cl", doc=InputDocumentation(doc="<coverage threshold for splitting at misassemblies: default 3>")), ToolInput(tag="in_ch", input_type=Boolean(optional=True), prefix="-ch", doc=InputDocumentation(doc="<repeat coverage threshold for splitting at misassemblies: default 30>")), ToolInput(tag="in_fill_unaligned_gaps", input_type=String(optional=True), prefix="-M", doc=InputDocumentation(doc="to fill unaligned gaps with reference contigs: defalut off"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosome_Scaffolder_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

