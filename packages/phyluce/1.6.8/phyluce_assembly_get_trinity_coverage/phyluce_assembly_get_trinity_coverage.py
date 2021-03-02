from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String, Boolean

Phyluce_Assembly_Get_Trinity_Coverage_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_get_trinity_coverage", base_command=["phyluce_assembly_get_trinity_coverage"], inputs=[ToolInput(tag="in_assemblies", input_type=Directory(optional=True), prefix="--assemblies", doc=InputDocumentation(doc="The directory containing the assemblies")), ToolInput(tag="in_assemb_lo_config", input_type=File(optional=True), prefix="--assemblo-config", doc=InputDocumentation(doc="The assemblo_trinity configuration file")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="The number of compute cores/threads to run with")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="Cleanup all intermediate Trinity files")), ToolInput(tag="in_bwa_mem", input_type=Boolean(optional=True), prefix="--bwa-mem", doc=InputDocumentation(doc="Use bwa-mem instead of standard bwa")), ToolInput(tag="in_assembler", input_type=String(optional=True), prefix="--assembler", doc=InputDocumentation(doc="Program used to asemble raw reads")), ToolInput(tag="in_trim", input_type=Boolean(optional=True), prefix="--trim", doc=InputDocumentation(doc="Trim contigs to a minimum coverage amount")), ToolInput(tag="in_trinity", input_type=String(), position=0, doc=InputDocumentation(doc="--subfolder SUBFOLDER"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Get_Trinity_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

