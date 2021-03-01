from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Hicup_Mapper_V0_1_0 = CommandToolBuilder(tool="hicup_mapper", base_command=["hicup_mapper"], inputs=[ToolInput(tag="in_bowtie", input_type=Boolean(optional=True), prefix="--bowtie", doc=InputDocumentation(doc="Specify the path to Bowtie")), ToolInput(tag="in_bowtie_two", input_type=Boolean(optional=True), prefix="--bowtie2", doc=InputDocumentation(doc="Specify the path to Bowtie 2")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc="Specify the configuration file")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Specify FASTQ format\nOptions: Sanger, Solexa_Illumina_1.0, Illumina_1.3, Illumina_1.5")), ToolInput(tag="in_index", input_type=Boolean(optional=True), prefix="--index", doc=InputDocumentation(doc="Path to the relevant reference genome Bowtie/Bowtie2 indices")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Directory to write output files")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress progress reports (except warnings)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Specify the number of threads, allowing simultaneous processing\nof different files (default: 1)")), ToolInput(tag="in_zip", input_type=Boolean(optional=True), prefix="--zip", doc=InputDocumentation(doc="Compress output"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup_Mapper_V0_1_0().translate("wdl", allow_empty_container=True)

