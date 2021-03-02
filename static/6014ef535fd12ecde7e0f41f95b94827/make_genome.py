from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Make_Genome_V0_1_0 = CommandToolBuilder(tool="make_genome", base_command=["make_genome"], inputs=[ToolInput(tag="in_parquet_block_size", input_type=Int(optional=True), prefix="-parquet_block_size", doc=InputDocumentation(doc=": Parquet block size (default = 128mb) (default: 134217728)")), ToolInput(tag="in_parquet_compression_codec", input_type=Boolean(optional=True), prefix="-parquet_compression_codec", doc=InputDocumentation(doc="[UNCOMPRESSED | SNAPPY | GZIP | LZO | BROTLI   : Parquet compression codec (default: GZIP)")), ToolInput(tag="in_parquet_disable_dictionary", input_type=Boolean(optional=True), prefix="-parquet_disable_dictionary", doc=InputDocumentation(doc=": Disable dictionary encoding (default: false)")), ToolInput(tag="in_parquet_logging_level", input_type=String(optional=True), prefix="-parquet_logging_level", doc=InputDocumentation(doc=": Parquet logging level (default = severe) (default: SEVERE)")), ToolInput(tag="in_parquet_page_size", input_type=Int(optional=True), prefix="-parquet_page_size", doc=InputDocumentation(doc=": Parquet page size (default = 1mb) (default: 1048576)")), ToolInput(tag="in_print_metrics", input_type=Boolean(optional=True), prefix="-print_metrics", doc=InputDocumentation(doc=": Print metrics to the log on completion (default: false)")), ToolInput(tag="in_genome", input_type=String(), position=0, doc=InputDocumentation(doc=": Genome name in UCSC (ie. hg19, mm10, etc).")), ToolInput(tag="in_output_path", input_type=String(), position=1, doc=InputDocumentation(doc=": Output path to save .genome file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Genome_V0_1_0().translate("wdl", allow_empty_container=True)

