# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kinesis.Analytics do
  @moduledoc """
  Amazon Kinesis Analytics

  **Overview**

  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> This is the *Amazon Kinesis Analytics v1 API Reference*. The Amazon
  Kinesis Analytics Developer Guide provides additional information.
  """

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Adds a CloudWatch log stream to monitor application configuration
  errors. For more information about using CloudWatch log streams with Amazon
  Kinesis Analytics applications, see [Working with Amazon CloudWatch
  Logs](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  def add_application_cloud_watch_logging_option(client, input, options \\ []) do
    request(client, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Adds a streaming source to your Amazon Kinesis application. For
  conceptual information, see [Configuring Application
  Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

  You can add a streaming source either when you create an application or you
  can use this operation to add a streaming source after you create an
  application. For more information, see
  [CreateApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html).

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation to find the current application version.

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationInput` action.
  """
  def add_application_input(client, input, options \\ []) do
    request(client, "AddApplicationInput", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Adds an
  [InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
  to an application. An input processor preprocesses records on the input
  stream before the application's SQL code executes. Currently, the only
  input processor available is [AWS
  Lambda](https://docs.aws.amazon.com/lambda/).
  """
  def add_application_input_processing_configuration(client, input, options \\ []) do
    request(client, "AddApplicationInputProcessingConfiguration", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Adds an external destination to your Amazon Kinesis Analytics
  application.

  If you want Amazon Kinesis Analytics to deliver data from an in-application
  stream within your application to an external destination (such as an
  Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an
  AWS Lambda function), you add the relevant configuration to your
  application using this operation. You can configure one or more outputs for
  your application. Each output configuration maps an in-application stream
  and an external destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can
  analyze the errors. For more information, see [Understanding Application
  Output
  (Destination)](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation to find the current application version.

  For the limits on the number of application inputs and outputs you can
  configure, see
  [Limits](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  def add_application_output(client, input, options \\ []) do
    request(client, "AddApplicationOutput", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Adds a reference data source to an existing application.

  Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
  object) and creates an in-application table within your application. In the
  request, you provide the source (S3 bucket name and object key name), name
  of the in-application table to create, and the necessary mapping
  information that describes how data in Amazon S3 object maps to columns in
  the resulting in-application table.

  For conceptual information, see [Configuring Application
  Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  For the limits on data sources you can add to your application, see
  [Limits](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

  This operation requires permissions to perform the
  `kinesisanalytics:AddApplicationOutput` action.
  """
  def add_application_reference_data_source(client, input, options \\ []) do
    request(client, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Creates an Amazon Kinesis Analytics application. You can configure
  each application with one streaming source as input, application code to
  process the input, and up to three destinations where you want Amazon
  Kinesis Analytics to write the output data from your application. For an
  overview, see [How it
  Works](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

  In the input configuration, you map the streaming source to an
  in-application stream, which you can think of as a constantly updating
  table. In the mapping, you must provide a schema for the in-application
  stream and map each data column in the in-application stream to a data
  element in the streaming source.

  Your application code is one or more SQL statements that read input data,
  transform it, and generate output. Your application code can create one or
  more SQL artifacts like SQL streams or pumps.

  In the output configuration, you can configure the application to write
  data from in-application streams created in your applications to up to
  three destinations.

  To read data from your source stream or write data to destination streams,
  Amazon Kinesis Analytics needs your permissions. You grant these
  permissions by creating IAM roles. This operation requires permissions to
  perform the `kinesisanalytics:CreateApplication` action.

  For introductory exercises to create an Amazon Kinesis Analytics
  application, see [Getting
  Started](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Deletes the specified application. Amazon Kinesis Analytics halts
  application execution and deletes the application, including any
  application artifacts (such as in-application streams, reference table, and
  application code).

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplication` action.
  """
  def delete_application(client, input, options \\ []) do
    request(client, "DeleteApplication", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Deletes a CloudWatch log stream from an application. For more
  information about using CloudWatch log streams with Amazon Kinesis
  Analytics applications, see [Working with Amazon CloudWatch
  Logs](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).
  """
  def delete_application_cloud_watch_logging_option(client, input, options \\ []) do
    request(client, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Deletes an
  [InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
  from an input.
  """
  def delete_application_input_processing_configuration(client, input, options \\ []) do
    request(client, "DeleteApplicationInputProcessingConfiguration", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Deletes output destination configuration from your application
  configuration. Amazon Kinesis Analytics will no longer write data from the
  corresponding in-application stream to the external output destination.

  This operation requires permissions to perform the
  `kinesisanalytics:DeleteApplicationOutput` action.
  """
  def delete_application_output(client, input, options \\ []) do
    request(client, "DeleteApplicationOutput", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Deletes a reference data source configuration from the specified
  application configuration.

  If the application is running, Amazon Kinesis Analytics immediately removes
  the in-application table that you created using the
  [AddApplicationReferenceDataSource](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics.DeleteApplicationReferenceDataSource` action.
  """
  def delete_application_reference_data_source(client, input, options \\ []) do
    request(client, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Returns information about a specific Amazon Kinesis Analytics
  application.

  If you want to retrieve a list of all applications in your account, use the
  [ListApplications](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics:DescribeApplication` action. You can use
  `DescribeApplication` to get the current application versionId, which you
  need to call other operations such as `Update`.
  """
  def describe_application(client, input, options \\ []) do
    request(client, "DescribeApplication", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Infers a schema by evaluating sample records on the specified
  streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery
  stream) or S3 object. In the response, the operation returns the inferred
  schema and also the sample records that the operation used to infer the
  schema.

  You can use the inferred schema when configuring a streaming source for
  your application. For conceptual information, see [Configuring Application
  Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
  Note that when you create an application using the Amazon Kinesis Analytics
  console, the console uses this operation to infer a schema and show it in
  the console user interface.

  This operation requires permissions to perform the
  `kinesisanalytics:DiscoverInputSchema` action.
  """
  def discover_input_schema(client, input, options \\ []) do
    request(client, "DiscoverInputSchema", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Returns a list of Amazon Kinesis Analytics applications in your
  account. For each application, the response includes the application name,
  Amazon Resource Name (ARN), and status. If the response returns the
  `HasMoreApplications` value as true, you can send another request by adding
  the `ExclusiveStartApplicationName` in the request body, and set the value
  of this to the last application name from the previous response.

  If you want detailed information about a specific application, use
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html).

  This operation requires permissions to perform the
  `kinesisanalytics:ListApplications` action.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Starts the specified Amazon Kinesis Analytics application. After
  creating an application, you must exclusively call this operation to start
  your application.

  After the application starts, it begins consuming the input data, processes
  it, and writes the output to the configured destination.

  The application status must be `READY` for you to start an application. You
  can get the application status in the console or using the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation.

  After you start the application, you can stop the application from
  processing the input by calling the
  [StopApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html)
  operation.

  This operation requires permissions to perform the
  `kinesisanalytics:StartApplication` action.
  """
  def start_application(client, input, options \\ []) do
    request(client, "StartApplication", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Stops the application from processing input data. You can stop an
  application only if it is in the running state. You can use the
  [DescribeApplication](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html)
  operation to find the application state. After the application is stopped,
  Amazon Kinesis Analytics stops reading data from the input, the application
  stops processing data, and there is no output written to the destination.

  This operation requires permissions to perform the
  `kinesisanalytics:StopApplication` action.
  """
  def stop_application(client, input, options \\ []) do
    request(client, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Kinesis Analytics application. Note
  that the maximum number of application tags includes system tags. The
  maximum number of user-defined application tags is 50. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Kinesis Analytics application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html).
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  <note> This documentation is for version 1 of the Amazon Kinesis Data
  Analytics API, which only supports SQL applications. Version 2 of the API
  supports SQL and Java applications. For more information about version 2,
  see [Amazon Kinesis Data Analytics API V2
  Documentation](/kinesisanalytics/latest/apiv2/Welcome.html).

  </note> Updates an existing Amazon Kinesis Analytics application. Using
  this API, you can update application code, input configuration, and output
  configuration.

  Note that Amazon Kinesis Analytics updates the
  `CurrentApplicationVersionId` each time you update your application.

  This operation requires permission for the
  `kinesisanalytics:UpdateApplication` action.
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "kinesisanalytics"}
    host = get_host("kinesisanalytics", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "KinesisAnalytics_20150814.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
